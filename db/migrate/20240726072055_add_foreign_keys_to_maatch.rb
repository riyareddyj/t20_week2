class AddForeignKeysToMaatch < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :maatches, :teams, column: :home_team_id
    add_foreign_key :maatches, :teams, column: :away_team_id
  end
end