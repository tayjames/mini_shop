require 'rails_helper'

RSpec.describe 'Edit Item' do
  describe 'As a visitor' do
    describe 'When I visit an item show page' do
      it "I see a form to edit the item's data including: name, price, description, image, inventory" do
        merchant_1 = Merchant.create!(name: "Leigh's Goodnight Kisses", address: "888 Waifu Terrace", city: "Los Angeles", state: "CA", zip: 90210)
        item_1 = Item.create!(name: "Goodnight Kiss", description: "Does not include a bedtime story read in a soothing tone.", price: 550.00, image: nil, status: "active", inventory: 4, merchant: "Leigh's Goodnight Kisses")

        visit '/items'

        click_link 'Edit'

        expect(current_path).to eq("/items/#{item_1.id}/edit")

        fill_in 'Description', with: "550.00 a la carte, ask about rates for a bedtime story read in a soothing tone."
        click_on 'Update Item'

        expect(current_path).to eq("/items/#{item_1.id}")
        expect(page).to have_content("550.00 a la carte, ask about rates for a bedtime story read in a soothing tone.")
      end
    end
  end
end
