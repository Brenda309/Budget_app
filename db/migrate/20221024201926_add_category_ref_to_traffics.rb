class AddCategoryRefToTraffics < ActiveRecord::Migration[7.0]
  def change
    add_reference :traffics, :categories, null: false, foreign_key: true
  end
end
