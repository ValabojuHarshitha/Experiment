class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :occupation
      t.string :exp

      t.timestamps
    end
  end
end
