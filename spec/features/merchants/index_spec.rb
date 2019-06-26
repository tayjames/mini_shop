require "rails_helper"

RSpec.describe "Merchant Index"  do
  describe "As a Visitor" do
    it "I see all the names of each merchant in the stystem" do
      merchant_1 = Merchant.create!(name: "Valentino's Valentines", address: "1111 Flora Ct.", city: "Denver", state: "CO", zip: 80202)
      merchant_2 = Merchant.create!(name: "Leigh's Goodnight Kisses", address: "888 Waifu Terrace", city: "Los Angeles", state: "CA", zip: 90210)
      merchant_3 = Merchant.create!(name: "Hoku's Gumball Snuggles", address: "666 Magnum Opus St.", city: "Portland", state: "OR", zip: 97202)
      merchant_4 = Merchant.create!(name: "Jake's Beach Walks", address: "1020 NW 17th Ave.", city: "Portland", state: "OR", zip: 97202)
      merchant_5 = Merchant.create!(name: "Diana's Zucchini Bread", address: "8 Pelota Ct.", city: "Denver", state: "CO", zip: 80303)
      merchant_6 = Merchant.create!(name: "Julian's Secret Services", address: "12 Mercury Ln.", city: "Jacksonville", state: "FL", zip: 12345)
      merchant_7 = Merchant.create!(name: "Jan & Joey's Cars & Couches", address: "000 8th St.", city: "Santa Fe", state: "NM", zip: 00000)

      visit "/merchants"

      save_and_open_page

      expect(page).to have_content(merchant_1.name)
      expect(page).to have_content(merchant_2.name)
      expect(page).to have_content(merchant_3.name)
      expect(page).to have_content(merchant_4.name)
      expect(page).to have_content(merchant_5.name)
      expect(page).to have_content(merchant_6.name)
      expect(page).to have_content(merchant_7.name)

    end
  end
end
#is this named index_spec bc we're creating the index page?
