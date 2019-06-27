require "rails_helper"

RSpec.describe "Merchant id" do
  describe "As a Visitor" do
    it "I see the merchant with that id including the merchant's: name, address, city, state, zip" do
    merchant_1 = Merchant.create!(name: "Valentino's Valentines", address: "1111 Flora Ct.", city: "Denver", state: "CO", zip: 80202)
    merchant_2 = Merchant.create!(name: "Leigh's Goodnight Kisses", address: "888 Waifu Terrace", city: "Los Angeles", state: "CA", zip: 90210)
    merchant_3 = Merchant.create!(name: "Hoku's Gumball Snuggles", address: "666 Magnum Opus St.", city: "Portland", state: "OR", zip: 97202)
    merchant_4 = Merchant.create!(name: "Jake's Beach Walks", address: "1020 NW 17th Ave.", city: "Portland", state: "OR", zip: 97202)
    merchant_5 = Merchant.create!(name: "Diana's Zucchini Bread", address: "8 Pelota Ct.", city: "Denver", state: "CO", zip: 80303)
    merchant_6 = Merchant.create!(name: "Julian's Secret Services", address: "12 Mercury Ln.", city: "Jacksonville", state: "FL", zip: 12345)
    merchant_7 = Merchant.create!(name: "Jan & Joey's Cars & Couches", address: "000 8th St.", city: "Santa Fe", state: "NM", zip: 00000)

    visit "/merchants/#{merchant_1.id}"
    # visit "/merchants/#{merchant_2.id}"
    # visit "/merchants/#{merchant_3.id}"
    # visit "/merchants/#{merchant_4.id}"
    # visit "/merchants/#{merchant_5.id}"
    # visit "/merchants/#{merchant_6.id}"
    # visit "/merchants/#{merchant_7.id}"

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_1.address)
    expect(page).to have_content(merchant_1.city)
    expect(page).to have_content(merchant_1.state)
    expect(page).to have_content(merchant_1.zip)
    expect(page).to_not have_content(merchant_2.zip)
      end
    end
  end
