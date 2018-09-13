class Discipline < ApplicationRecord
  belongs_to :professor, class_name: 'User', foreign_key: 'user_id', inverse_of: :discipline
  has_many :students_discipline, inverse_of: :discipline
  has_many :students, through: :students_discipline


end
