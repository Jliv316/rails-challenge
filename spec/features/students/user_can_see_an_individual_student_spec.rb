require 'rails_helper'

describe 'user visits /students/:id' do
  scenario 'user can see the name of a student' do
    student = Student.create!(name: 'Fred')

    visit "/students/#{student.id}"

    expect(page).to have_content(student.name)
  end
end