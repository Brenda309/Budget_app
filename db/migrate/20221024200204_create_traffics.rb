class CreateTraffics < ActiveRecord::Migration[7.0]
  def change
    create_table :traffics do |t|
      t.string :name
      t.string :string
      t.float :amount

      t.timestamps
    end
  end
end
