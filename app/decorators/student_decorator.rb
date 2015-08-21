class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    if subject_item.subject_item_notes.present?
      subjects = subject_item.subject_item_notes
      sum_of_notes = subjects.inject(0) { |sum, note| sum + note.value.to_f }
      number_of_notes = subjects.size
      avg_notes = (sum_of_notes/number_of_notes).round(1).to_s + "0"
    else
      "0.00"
    end
  end
end
