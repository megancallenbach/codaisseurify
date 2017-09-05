class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :length
      t.date :release_date
      t.string :genre

      t.timestamps
    end
  end
end
