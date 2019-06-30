require "rails_helper"

RSpec.describe "Merchant Items Index" do
  describe "As a visitor" do
    it "I see each Item that belongs to the Merchant with that merchant_id including the Item's: name, price, image, status, inventory" do
      merchant_1 = Merchant.create!(name: "Valentino's Valentines", address: "1111 Flora Ct.", city: "Denver", state: "CO", zip: 80202)
      item_1 = Item.create!(name: "Valentine", description: "The Valentine that your partner would never get you", price: 214.00, image: nil, status: "active", inventory: 7, merchant: "Valentino's Valentines")

      visit "/merchants/#{merchant_1.id}/items"

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.price)
      expect(page).to have_content(item_1.image)
      expect(page).to have_content(item_1.status)
      expect(page).to have_content(item_1.inventory)

    end
  end
end
