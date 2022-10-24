class AddUserRefToTraffics < ActiveRecord::Migration[7.0]
  def change
    add_reference :traffics, :user, null: false, foreign_key: true
  end
end
