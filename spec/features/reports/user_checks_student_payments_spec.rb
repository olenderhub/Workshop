require 'spec_helper'

feature 'User checks student payments' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_student_payments_path
  end

  scenario 'should have correct content' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Student payments'
    end
  end

  scenario 'should have table' do
      expect(page).to have_selector('table')
  end
end
