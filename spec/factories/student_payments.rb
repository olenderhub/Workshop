FactoryGirl.define do
  factory :student_payment do
    amount Faker::Number.between(1, 4) * 100
    payment_date Faker::Date.between(1.months.ago, 12.months.ago)
    month { payment_date + 1.month }
  end
end

