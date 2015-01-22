require_relative '../app/models/teacher'

module TeachersCreator
  def self.execute
    #create some dummy data
    Teacher.create(name: "Cikgu Mega", email: "mega@teachers.net", phone: "018-43451354")
    Teacher.create(name: "Cikgu XtraLarge", email: "xtralarge@teachers.net", phone: "011-5734676")
    Teacher.create(name: "Cikgu Large", email: "large@teachers.net", phone: "012-3245478")
    Teacher.create(name: "Cikgu Medium", email: "medium@teachers.net", phone: "014-8754875")
    Teacher.create(name: "Cikgu Small", email: "small@teachers.net", phone: "010-33451111")
    Teacher.create(name: "Cikgu Mini", email: "mini@teachers.net", phone: "013-3389891")
    Teacher.create(name: "Cikgu Micro", email: "micro@teachers.net", phone: "014-8754875")
    Teacher.create(name: "Cikgu Nano", email: "nano@teachers.net", phone: "017-7893000")
    Teacher.create(name: "Cikgu Pico", email: "pico@teachers.net", phone: "019-6759988")
  end
end