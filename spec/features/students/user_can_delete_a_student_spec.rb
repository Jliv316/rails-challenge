require 'rails_helper'

describe 'user deletes an existing student' do
  scenario 'a user can delete a student from students index' do
    message = 'Student was successfully deleted!'
    student = Student.create!(name: "Thomas")
    visit student_path(student)

    click_link 'Delete'

    # expect(page).to have_content(message)
    expect(page).to_not have_content("#{student.name}")
  end
end
