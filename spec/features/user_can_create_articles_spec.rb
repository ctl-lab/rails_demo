feature 'User can create articles' do
  before do
    visit root_path
    click_on "New Article"
  end 

  context "Succesfully create an article [HappyPath]" do
    before do
      fill_in "Title", with: 'Happy holidays'
      fill_in "Content", with 'It is going to be fun!'
      click_on "Create Article"
    end

    it 'User should be on article show page' do
      article = Article.find_by(title: 'Happy holidays')
      expect(current_path).to eq article_path(article)
    end

    it 'User should see success message' do
      expect(page).to have_content 'Article successfully created.'
    end

    it 'User should see article title' do
      expect(page).to have_content 'Happy holidays'
    end

    it 'User should see article content' do
      expect(page).to have_content 'It is going to be fun!'
    end
  end

  context "User don't enter a title for the article [Sad Path]" do
    before do
      fill_in "Content", with: 'It is going to be fun!'
      click_on "Create Article"
    end

    it 'User should see error message' do
      expect(page). to have_content 'Title cannot be blank'
    end

    # more sad paths
  end
end