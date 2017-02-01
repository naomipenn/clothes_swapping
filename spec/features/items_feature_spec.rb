require 'rails_helper'

describe "Item" do

  context "no items have been added" do
    scenario "should display a prompt to add an item" do
      visit '/items'
      expect(page).to have_content 'No items yet'
      expect(page).to have_link 'Add an item'
    end
  end

  context 'items have been added' do
    before do
      add_an_item
    end
    scenario 'display items' do
      visit '/items'
      expect(page).to have_content 'Pokemon onesie'
      expect(page).not_to have_content 'No items yet'
    end
  end
end
