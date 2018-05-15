require 'rails_helper'

describe 'user visits /student:id' do
  scenario 'user can use nav bar to get to new student page' do
    student_1 = Student.create!(name: 'Fred')
    student_2 = Student.create!(name: 'Ted')
    student_3 = Student.create!(name: 'Red')

    visit "/students/#{student_1.id}"
    click_on "Create New Student"

    expect(current_path).to eq(new_student_path)
  end
end