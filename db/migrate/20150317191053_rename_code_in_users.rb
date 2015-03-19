class RenameCodeInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :code, :wedding_code
  end
end
