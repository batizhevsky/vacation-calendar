class CreateUserdeps < ActiveRecord::Migration
  def change
    create_table :userdeps do |t|
      t.integer :user_id
      t.integer :departament_id

      t.timestamps
    end
  end
end
