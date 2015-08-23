class ReportsController < ApplicationController
  before_action :authenticate_user!
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
  expose(:student_payments) { StudentPayment.includes(:student) }
end
