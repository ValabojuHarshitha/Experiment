class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :name
      t.string :organization

      t.timestamps
    end
  end
end
