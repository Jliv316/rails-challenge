require 'rails_helper'

describe "user visits /students/:id/addresses/new" do
  describe "and fills in all forms and clicks submit" do
    scenario "user is taken to that students show page" do
      
      student = Student.create!(name: 'Fred')

      visit "/students/#{student.id}/addresses/new"

      fill_in "address[description]", with: "summer house"
      fill_in "address[street]", with: "Willowbrook Drive"
      fill_in "address[city]", with: "Fort Collins"
      fill_in "address[state]", with: "Colorado"
      fill_in "address[zip]", with: 80521

      click_button "Create"

      expect(current_path).to eq("/students/#{student.id}")
      expect(page).to have_content("#{Address.last.description}")
      expect(Address.count).to eq(1)
    end
  end
end