class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :add
      t.integer :teacher_id

      t.timestamps
    end
  end
end
