require 'spec_helper'

feature 'User clicks on button' do
  scenario 'to receive recommended wines' do

    v1 = Vineyard.create!(name: 'Truchard Vineyards', address: '3234 Old Sonoma Rd, Napa, CA 94559', country: 'USA')
    wine = Wine.create(name: 'Cabernet Sauvignon Reserve', grape: 'Cabernet Sauvignon', vintage: 2009,region: 'Carneros Valley', on_hand: 6, price: 29.99, category: 'Red', occasion: 'Nice dinner')
    user = User.create(email: 'plesko.l@gmail.com', password: 'password')
    v1.wines << wine
    user.wines << wine
    visit root_path
    sign_in_as(user)
    click_link 'Cabernet Sauvignon Reserve'
    click_link 'Like this wine? Search for similar wines by Truchard Vineyards'

    expect(page).to have_content 'Similar wines by Truchard Vineyards'

  end
end
