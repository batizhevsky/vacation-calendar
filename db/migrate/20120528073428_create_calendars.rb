class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :holiday

      t.timestamps
    end
  end
end
