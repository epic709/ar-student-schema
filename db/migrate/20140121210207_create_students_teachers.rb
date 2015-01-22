require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    # create_join_table :students, :teachers, column_options: {null: true} do |t|
    #   t.timestamps null: false

    create_table :students_teachers do |t|
      t.belongs_to :teacher
      t.belongs_to :student
      t.timestamps
    end
    add_index(:students_teachers, [:teacher_id, :student_id], unique: true)
  end
end