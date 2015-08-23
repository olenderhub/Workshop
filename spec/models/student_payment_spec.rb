require 'rails_helper'

RSpec.describe StudentPayment, type: :model do
  describe 'database columns' do
    it { should have_db_column :amount }
    it { should have_db_column :payment_date }
    it { should have_db_column :month }
    it { should have_db_column :student_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end
end

