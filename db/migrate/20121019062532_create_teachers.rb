class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.string :address
      t.string :contact
      t.string :organization
      t.integer :student_id
      t.timestamps
    end
  end
end
