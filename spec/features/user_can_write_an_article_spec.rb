feature 'visitor can write articles' do
  before do
    visit root_path
    click_on "Write Article"
    fill_in 'Title', with: "It is almost Friday"
    fill_in 'Content', with: "Yes!!!! that makes me happy"
    click_on 'Create Article'
  end

  describe 'Visitor can write an article' do
    it 'visitor should see success message' do
      expect(page).to have_content 'Article succesfully created'
    end
  end
end