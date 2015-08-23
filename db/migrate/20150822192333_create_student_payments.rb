class CreateStudentPayments < ActiveRecord::Migration
  def change
    create_table :student_payments do |t|
      t.integer :amount
      t.date :payment_date
      t.date :month
      t.integer :student_id
    end
    add_index :student_payments, :student_id
  end
end
