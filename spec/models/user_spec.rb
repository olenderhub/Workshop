require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of  :email }
    it { is_expected.to validate_length_of :email}
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_confirmation_of :password }
    it { is_expected.to validate_length_of :password}
  end

  describe 'database columns' do
    it { should have_db_column :email }
  end

  describe 'associations' do
  end
end
