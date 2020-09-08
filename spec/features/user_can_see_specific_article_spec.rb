feature 'User can see specific article' do
  before do
    create(:article, title: 'This is going to be a long week', content: 'Because of Rails')
    create(:article, title: 'Rails is awesome but confusing', content: 'because of too many files and folders')

    visit root_path
    click_on 'This is going to be a long week'
  end

  context 'Article displays' do
    it 'title' do
      expect(page).to have_content 'This is going to be a long week'
    end

    it 'content' do
      expect(page).to have_content 'Because of Rails'
    end
  end
end