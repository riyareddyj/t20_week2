class DropMaatch < ActiveRecord::Migration[7.1]
  def change
    drop_table :maatches
  end
end
