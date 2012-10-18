class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    create_table :students_teachers ,:id => false do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
