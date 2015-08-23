class StudentPaymentDecorator < BaseDecorator

  def full_name
    "#{student.last_name} #{student.first_name}"
  end

  def name_of_month
    month.strftime("%B")
  end

  def full_payment_date
    payment_date.strftime('%Y-%m-%d %H:%M')
  end
end
