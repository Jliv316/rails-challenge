require 'rails_helper'

describe 'user visits /student:id' do
  scenario 'user can get to students index page using nav bar' do
    student_1 = Student.create!(name: 'Fred')
    student_2 = Student.create!(name: 'Ted')
    student_3 = Student.create!(name: 'Red')

    visit "/students/#{student_1.id}"
    click_on "Students"

    expect(current_path).to eq(students_path)
  end
end