class ChangePartyInGuests < ActiveRecord::Migration
  def change
    change_column :guests, :party, :integer, default: 0
  end
end
