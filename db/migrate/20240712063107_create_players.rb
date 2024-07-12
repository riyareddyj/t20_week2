class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :age
      t.string :position
      t.references :team

      t.timestamps
    end
  end
end