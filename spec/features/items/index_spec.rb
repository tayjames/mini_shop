require "rails_helper"

RSpec.describe "Items Index" do
  describe "As a Visitor" do
    it "I see name, description, price, image, active/inactive status, inventory, name of merchant that sells item" do
      item_1 = Item.create!(name: "Valentine", description: "The Valentine that your partner would never get you", price: 214.00, image: nil, status: "active", inventory: 7, merchant: "Valentino's Valentines")

      visit "/items"

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.description)
      expect(page).to have_content(item_1.price)
      expect(page).to have_content(item_1.image)
      expect(page).to have_content(item_1.status)
      expect(page).to have_content(item_1.inventory)
      expect(page).to have_content(item_1.merchant)
    end
  end
end
