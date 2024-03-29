class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.boolean :admin
      t.string :notification
      t.integer :vacation_length
      t.timestamps
    end
  end
end
