require 'rails_helper'

describe StudentPaymentDecorator do
  let(:student) { create :student, first_name: 'John', last_name: 'Smith' }
  let(:payment_date) { DateTime.new(2014, 10, 10, 10, 10) }
  let(:student_payment) { create :student_payment,
    student: student,
    amount: 400,
    payment_date: payment_date,
    month: payment_date + 1.month
  }

  describe "#full_name" do
    subject { student_payment.decorate.full_name }
    it { is_expected.to eq 'Smith John' }
  end

  describe "#name_of_month" do
    subject { student_payment.decorate.name_of_month }
    it { is_expected.to eq 'November' }
  end

  describe "#full_payment_date" do
    subject { student_payment.decorate.full_payment_date }
    it { is_expected.to eq '2014-10-10 00:00' }
  end
end
