require 'spec_helper'

feature 'User views wines' do
  scenario 'on landing page' do
    v1 = Vineyard.create!(name: 'Truchard Vineyards', address: '3234 Old Sonoma Rd, Napa, CA 94559', country: 'USA')
    wine = Wine.create(name: 'Cabernet Sauvignon Reserve', grape: 'Cabernet Sauvignon', vintage: 2009,region: 'Carneros Valley', on_hand: 6, price: 29.99, category: 'Red', occasion: 'Nice dinner')
    user = User.create(email: 'plesko.l@gmail.com', password: 'password')
    v1.wines << wine
    user.wines << wine

    visit root_path
    sign_in_as(user)

    expect(page).to have_content wine.name
    expect(page).to have_content wine.category
    expect(page).to have_content wine.grape
    expect(page).to have_content wine.occasion
    expect(page).to have_content wine.vintage

  end
end
