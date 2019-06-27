require 'rails_helper'

RSpec.describe 'As a Visitor' do
  it 'I can delete a merchant' do
    merchant_0 = Merchant.create(name: "Kaitlyn's Smoked Salmon", address: "212 HongKong Ave.", city: "Paris", state: "Ohio", zip: 12345)

    visit '/merchants'

    click_button 'Delete'

    expect(current_path).to eq('/merchants')
    expect(page).to_not have_content(merchant_0.name)
    expect(page).to_not have_content(merchant_0.address)
    expect(page).to_not have_content(merchant_0.city)
    expect(page).to_not have_content(merchant_0.state)
    expect(page).to_not have_content(merchant_0.zip)
    expect(page).to_not have_button('Delete')
  end
end
