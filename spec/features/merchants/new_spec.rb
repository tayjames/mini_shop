require "rails_helper"

RSpec.describe 'New Merchant' do
  describe 'As a visitor' do
    describe 'When I visit the new merchant by clicking a link' do
      it "I can create a new merchant" do
        visit '/merchants'

        click_link 'New Merchant'

        expect(current_path).to eq('/merchants/new')


        fill_in "Name", with: "Kevin's Full Sets"
        fill_in "Address", with: "96 Vera Wang Blvd"
        fill_in "City", with: "Dallas"
        fill_in "State", with: "TX"
        fill_in "zip", with: 98549
        click_on 'Create Merchant'

        expect(current_path).to eq("/merchants")
        expect(page).to have_content("Kevin's Full Sets")
      end
    end
  end
end
