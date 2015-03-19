class AddUserReferenceToGuest < ActiveRecord::Migration
  def change
    add_reference :guests, :user, index: true
    add_foreign_key :guests, :users
  end
end
