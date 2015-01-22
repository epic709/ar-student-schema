require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students_teachers
  has_many :students, through: :students_teachers
  validates_associated :students_teachers
  validates :email, :uniqueness => true, :on => :create
end

# puts teacher1.name
# puts teacher2.email
# puts teacher3.phone