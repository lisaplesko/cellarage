require 'spec_helper'

feature 'User submits a wine' do
  background do
    visit root_path
    click_link '+'
  end

  scenario 'successfully' do
    fill_in 'Name', with: 'Estate Cuvée Pinot Noir'
    fill_in 'Vineyard', with: 'Sokol Blosser'
    fill_in 'Vintage', with: 2011
    fill_in 'Category', with: 'red'
    fill_in 'Description', with: 'Our 2011 Estate Cuvée Pinot Noir exhibits notes of ripe raspberry, baking spice and tarragon.'
    fill_in 'Grape', with: 'Pinot Noir'
    fill_in 'Price', with: 60.0
    fill_in 'Occasion', with: 'special event'
    click_button 'Submit'

    expect(page).to have_content 'Wine successfully added to collection!'
  end

  # scenario 'unsuccessfully due to required fields being blank' do
  #   click_button 'Submit'
  #   expect(page).to have_content "Name can't be blank"
  # end

end
