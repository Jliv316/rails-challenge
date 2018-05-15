require 'rails_helper'

describe Student, type: :model do
  describe 'Validations' do
    context "valid attributes" do
      it { should validate_presence_of(:description, :city, :state, :zip, :street) }
      end
    end
  end
end