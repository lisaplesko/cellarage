require 'spec_helper'

feature 'User views wines' do
  scenario 'on landing page' do
    wines = create_list(:wine, 1)

    visit root_path

    wines.each do |wine|
      expect(page).to have_content wine.name
      expect(page).to have_content wine.vineyard
      expect(page).to have_content wine.description
      expect(page).to have_content wine.price
      expect(page).to have_content wine.category
      expect(page).to have_content wine.grape
      expect(page).to have_content wine.occasion
      expect(page).to have_content wine.vintage

    end
  end

end
