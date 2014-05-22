require 'spec_helper'

feature 'User views wines' do
  scenario 'on landing page' do
    wine = Wine.create(name: 'Cabernet Sauvignon Reserve', grape: 'Cabernet Sauvignon', vintage: 2009,region: 'Carneros Valley', on_hand: 6, price: 29.99, category: 'Red', occasion: 'Nice dinner')

    visit root_path

    expect(page).to have_content wine.name
    expect(page).to have_content wine.price
    expect(page).to have_content wine.category
    expect(page).to have_content wine.grape
    expect(page).to have_content wine.region
    expect(page).to have_content wine.occasion
    expect(page).to have_content wine.vintage

  end
end


# sign_in_as
