require "rails_helper"

RSpec.describe 'New Item' do
  describe 'As a visitor' do
    describe 'When I visit a Merchant Items Index page' do
      it "I see a link to add a new item for that merchant" do
        visit '/items'

        click_link 'New Item'

        expect(current_path).to eq("/merchants/#{merchant.id}/items")
        fill_in "Name", with: "Hoku's Gumball Snuggles"
        fill_in "Price", with: 50.00
        fill_in "Description", with: "You pay Hoku to snuggle with her dog Gumball."
        fill_in "Image", with: nil
        fill_in "Inventory", with: 15

        expect(current_path).to eq("/merchants/#{merchant_id}/items")
        expect(page).to have_content("Hoku's Gumball Snuggles")
      end
    end
  end
end
