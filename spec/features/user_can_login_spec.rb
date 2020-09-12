feature 'user can login' do
  let(:test_article) { create(:article) }
  let(:user1) { create(:user) }
  context 'successfully' do
    before do
      visit root_path
      click_on 'Login'
      fill_in 'Email', with: user1.email
      fill_in 'Password', with: user1.password
      click_on 'Log in'
    end 
    
    it 'displays "Write Article" button when in root_path' do
      expect(page).to have_content('Write Article') 
    end

    it 'displays Edit Article button when in article page' do
      click_on test_article.title
      expect(page).to have_content 'Edit Article'
    end
  end
end


# Only allow logged in user to create articles
# ◦Feature test ◦Unit tests

#As a user 
#In order to access exclusive content in the app
#I need to be able to login