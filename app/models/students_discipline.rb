class StudentsDiscipline < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: 'user_id', inverse_of: :student_disciplines
  belongs_to :discipline, inverse_of: :student_disciplines
end
