class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.string :name
      t.integer :part_id

      t.timestamps
    end
  end
end
