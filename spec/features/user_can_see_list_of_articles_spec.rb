require 'rails_helper'

feature 'List articles on index page' do
  context 'with articles in db' do
    before do
      create(:article, title: 'This is going to be a long week')
      create(:article, title: 'Rails is awesome but confusing')

      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'This is going to be a long week'
    end 

    it 'displays second article title' do
      expect(page).to have_content 'Rails is awesome but confusing'
    end 
  end
end