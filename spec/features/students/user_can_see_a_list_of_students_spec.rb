require 'rails_helper'

describe 'user visits /students' do
  scenario 'user can see a list of students' do
    student_1 = Student.create!(name: 'Fred')
    student_2 = Student.create!(name: 'Ted')
    student_3 = Student.create!(name: 'Red')

    visit "/students"

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
  end

  scenario 'click on students name to get to student show page' do
    student_1 = Student.create!(name: 'Fred')
    student_2 = Student.create!(name: 'Ted')
    student_3 = Student.create!(name: 'Red')

    visit "/students"

    click_on "#{student_1.name}"

    expect(current_path).to eq(student_path(student_1))
  end
end