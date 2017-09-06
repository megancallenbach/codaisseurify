class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def change
    change_column :songs, :length, :decimal
  end
end
