require 'rails_helper'

describe Student, type: :model do
  describe 'Validations' do
    context "valid attributes" do
      it "is valid with a name" do
        student = Student.new(name: "Jimbo")
        expect(student).to be_valid
      end
    end
  end
end
description, street, city, state, and zip
rails g migration CreateAddresses description:text street:text city:text state:text zip:integer