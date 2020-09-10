feature 'Visitor can edit articles' do
  let(:test_a) { FactoryBot.create(:article, title: 'This is a bad title', content: 'Could do better') }
  before do
    visit article_path(test_a)
    click_on 'Edit Article'
    fill_in 'Title', with: 'This is a better title'
    click_on 'Update Article'
  end

  describe 'Visitor can edit an article' do
    it 'and it Displays a success message' do
      expect(page).to have_content 'Your article has been successfully updated'
    end

    it 'and displays the updated article' do
      expect(page).to have_content 'This is a better title'
    end
  end
end
