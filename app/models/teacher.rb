require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true, :on => :create

end

#create some dummy data
teacher1 = Teacher.create(name: "Cikgu Large", email: "large@teachers.net", phone: "012-3245478")
teacher2 = Teacher.create(name: "Cikgu Medium", email: "medium@teachers.net", phone: "014-8754875")
teacher3 = Teacher.create(name: "Cikgu Small", email: "small@teachers.net", phone: "010-33451111")

# puts teacher1.name
# puts teacher2.email
# puts teacher3.phone