require 'spec_helper'

feature 'User submits a wine' do
  background do
    user = User.create(email: 'plesko.l@gmail.com', password: 'password')
    visit root_path
    sign_in_as(user)
    click_link 'Add a new wine to my collection'
  end

  scenario 'successfully' do
    fill_in 'Vineyard Name', with: 'Sokol Blosser'
    click_button 'Add vineyard'
    select 'Sokol Blosser', :from => '**Select a winery from the list:'
    fill_in 'Name', with: 'Estate Cuvée Pinot Noir'
    fill_in 'Vintage', with: 2011
    fill_in 'On hand', with: 2
    fill_in 'Price', with: 60.0
    select 'Red', :from => 'Category'
    select 'Nice dinner', :from => 'Occasion'
    select 'Cabernet', :from => 'Grape'
    click_button 'Submit'

    expect(page).to have_content 'Wine successfully added to collection!'
  end

  scenario 'unsuccessfully due to vineyard being blank' do
    fill_in 'Name', with: 'Estate Cuvée Pinot Noir'
    click_button 'Submit'

    expect(page).to have_content "Vineyard can't be blank"
  end

  scenario 'unsuccessfully due to wine name being blank' do
    fill_in 'Vineyard Name', with: 'Sokol Blosser'
    click_button 'Add vineyard'
    select 'Sokol Blosser', :from => '**Select a winery from the list:'
    click_button 'Submit'

    expect(page).to have_content "Name can't be blank"
  end

end



# There's a have_select matcher if you use Capybara with Rspec:
# expect(page).to have_select('my-select', selected: 'Option 2')
