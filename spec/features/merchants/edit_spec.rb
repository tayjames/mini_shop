require "rails_helper"

RSpec.describe 'Edit Merchant' do
  describe 'As a visitor' do
    describe 'When I visit a merchant show page' do
      it "I see a form to edit the merchant's data including: name, address, city, state, zip" do
        merchant_0 = Merchant.create!(name: "Tay's Opinions", address: "2 Cents Ct.", city: "Denver", state: "CO", zip: "80202")

        visit '/merchants'

        click_link 'Edit'

        expect(current_path).to eq("/merchants/#{merchant_0.id}/edit")

        fill_in "Name", with: "Tay's Facts"
        click_on 'Update Merchant'

        expect(current_path).to eq("/merchants/#{merchant_0.id}")
        expect(page).to have_content("Tay's Facts")
      end
    end
  end
end
