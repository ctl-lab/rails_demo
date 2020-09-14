# As the page admin
# in order to avoid general public to modify page content
# I need wrtite and create buttons not to be displayed.

feature 'User has restricted access if not logged in' do
  before do
    visit root_path
  end

  it 'does not display write article button' do
    expect(page).to have_no_button('Write Article') 
  end
end