require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :format => { :with => /\A[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]{2,}\z/, :message => "Invalid email format" }, :on => :create
  validates :age, :numericality => {:greater_than_or_equal_to => 5, :message => "No toddlers allowed!"}
  validates :phone, :format => { :with => /\(\d{3}\) \d{3}-\d{4}/, :message => "Invalid phone format!" }, :on => :create
  validates :email, :uniqueness => true, :on => :create

  # implement your Student model here
  def name
    # self.first_name + self.last_name
    "#{first_name} #{last_name}"
  end

  def age
    dob = "#{birthday}".to_date
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end

# student = Student.new(:first_name => "Adrian", :last_name => "Lai",
#                       :birthday => Date.new(1979,1,7),
#                       :gender => 'male',
#                       :email => '7evencreations@gmailer.com',
#                       :phone => '(060) 014-3263640'
# )
# puts student.birthday