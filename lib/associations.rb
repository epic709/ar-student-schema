require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/students_teacher'

module Associations
  def self.execute
    teacher_ids = []

    #for i in 1..Student.all.length
    #   cur_student = Student.find(i)
    #   num_of_teachers = rand(2..4)
    #   teacher_ids = (1..Teacher.all.length).to_a.sample(num_of_teachers)
    #   for j in 1..num_of_teachers
    #     #assign a random teacher_id
    #     #teacher_ids << rand(1..Teacher.all.length) [1,2,3,4,5,6,7,8,9]
    #     # cur_student.assign(teacher_ids)

    #   end
    # end


    # end
    student = Student.find(1)
    teacher = Teacher.find(1)

    student2 = Student.find(2)
    teacher2 = Teacher.find(2)

#method 1
    teacher.students << student
    student2.teachers << teacher2
#method 2, inserts new student and associates
    # student = teacher.students.build(name:)
    # student2.save







      # puts "teacher 1st time"
      # # puts @teacher9.inspect
      # # puts Student.all.first.teacher.inspect

      # Student.all.each do |student|
      #   student.teacher_id = 1
      #   student.save
      # end

      # puts Student.find(1).first_name


    # Student.assign(teachers[])



    # field_names = nil
    # Student.transaction do
    #   File.open(filename).each do |line|
    #     data = line.chomp.split(',')
    #     if field_names.nil?
    #       field_names = data
    #     else
    #       attribute_hash = Hash[field_names.zip(data)]
    #       student = Student.create!(attribute_hash)
    #     end
    #   end
    # end
  end
end