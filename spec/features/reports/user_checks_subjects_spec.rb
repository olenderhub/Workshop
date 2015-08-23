require 'spec_helper'

feature 'User checks subjects' do

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit report_subjects_path
  end

  scenario 'should have correct content' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Subjects'
    end
  end
end

