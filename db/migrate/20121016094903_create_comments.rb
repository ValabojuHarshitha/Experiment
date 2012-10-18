class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :who_commented

      t.timestamps
    end
  end
end
