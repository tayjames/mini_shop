require "rails_helper"

RSpec.describe "Merchant id" do
  describe "As a Visitor" do
    it "I see the merchant with that id including the merchant's: name, address, city, state, zip" do
    merchant_1 = Merchant.create!(name: "Valentino's Valentines", address: "5280 Alberta St", city: "Portland", state: "OR", zip: 97220)

    visit "/merchants/#{merchant_1.id}"

    save_and_open_page

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_1.address)
    expect(page).to have_content(merchant_1.city)
    expect(page).to have_content(merchant_1.state)
    expect(page).to have_content(merchant_1.zip)
      end
    end
  end
