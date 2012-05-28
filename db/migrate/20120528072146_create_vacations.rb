class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.date :start
      t.date :stop
      t.integer :user_id

      t.timestamps
    end
  end
end
