require 'rails_helper'

describe "user visits /students/new" do
  describe "User creates a new student" do
    scenario "a user can create a new student" do

      visit new_student_path

      fill_in "student[name]", with: "Chad"
      click_button "Create"

      expect(current_path).to eq("/students/#{Student.last.id}")
      expect(page).to have_content("#{Student.last.name}")
      expect(Student.count).to eq(1)
    end
  end
end