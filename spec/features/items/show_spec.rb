require "rails_helper"

RSpec.describe "As a visitor" do
  describe "I visit an item show page" do
    it "then I see only that item's: name, status, price, description, image, inventory, merchant" do
      merchant_1 = Merchant.create!(name: "Leigh's Goodnight Kisses", address: "888 Waifu Terrace", city: "Los Angeles", state: "CA", zip: 90210)
      item_1 = Item.create!(name: "Goodnight Kiss", description: "Does not include a bedtime story read in a soothing tone.", price: 550.00, image: nil, status: "active", inventory: 4, merchant: "Leigh's Goodnight Kisses")
      item_2 = Item.create!(name: "Valentine", description: "The Valentine that your partner would never get you", price: 214.00, image: nil, status: "active", inventory: 7, merchant: "Valentino's Valentines")

      visit "/items/#{item_1.id}"

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.status)
      expect(page).to have_content(item_1.price)
      expect(page).to have_content(item_1.description)
      expect(page).to have_content(item_1.image)
      expect(page).to have_content(item_1.inventory)
      expect(page).to have_content(item_1.merchant)
      expect(page).to_not have_content(item_2.name)
    end
  end
end
