class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :discipline, inverse_of: :professor
  has_many :students_discipline, inverse_of: :student 
  has_many :disciplines, through: :students_discipline


  enum role: [:admin, :student, :professor ]
end
