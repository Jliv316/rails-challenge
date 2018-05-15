require 'rails_helper'

describe "User edits an existing student" do
  scenario "a user can edit a student" do
    student = Student.create!(name: "Thomas")

    visit edit_student_path(student)
    
    fill_in "student[name]", with: "Richard"
    click_button "Update"

    expect(current_path).to eq("/students/#{Student.last.id}")
    expect(page).to have_content("Richard")
    expect(page).to_not have_content("Thomas")
  end
end