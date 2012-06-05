class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :password, :password_digest
  end

  def down
  end
end
