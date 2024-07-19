class ChangeColumnInPlayer < ActiveRecord::Migration[7.1]
  def change
    change_column_null :players, :name, true
    change_column_null :players, :role, true
    change_column_null :players, :is_captain, true
    change_column_null :players, :is_active, true

    change_column_default :players, :is_captain, nil
    change_column_default :players, :is_active, nil
  end
end
