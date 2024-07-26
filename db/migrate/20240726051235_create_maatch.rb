class CreateMaatch < ActiveRecord::Migration[7.1]
  def change
    create_table :maatches do |t|
      t.string :location, null: false
      t.datetime :date, null: false
      t.integer :home_team_id, null: false
      t.integer :away_team_id, null: false

      t.timestamps
    end
  end
end
