require "rails_helper"

RSpec.describe "Merchant Index"  do
  describe "As a Visitor" do
    it "I see all the name of each merchant in the stystem" do
      merchant_1 = Merchant.create(name: "Valentino")

      visit "/merchants"

      save_and_open_page

      expect(page).to have_content(merchant_1.name)
      
    end
  end
end
#is this named index_spec bc we're creating the index page?
