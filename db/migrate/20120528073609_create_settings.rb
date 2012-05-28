class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.boolean :admin
      t.string :notification

      t.timestamps
    end
  end
end
