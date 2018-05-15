require 'rails_helper'

describe Address, type: :model do
  describe 'Validations' do
    scenario "valid attributes" do
        address = Address.new(description: "summer house", state: "Texas", city: "Dallas", street: 'car ln', zip: 60175)
        expect(address).to be_valid
      end
    end
  end