class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :name
      t.integer :chief

      t.timestamps
    end
  end
end
