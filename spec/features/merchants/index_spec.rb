require "rails_helper"

RSpec.describe "merchants index page", type: :feature do
  it "user can see all merchants" do
    merchant_1 = Merchant.create()

    visit "/merchants"
    expect(page).to have_content(merchant_1)#what attributes does our merchant have?
    expect(page).to have_content()
  end
end
#is this named index_spec bc we're creating the index page?
