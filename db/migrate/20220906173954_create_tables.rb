class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :karaoke_singers do |t|
      t.string :name
      t.integer :number_of_drinks
    end

    create_table :songs do |t|
      t.string :title
      t.integer :runtime_in_minutes
      t.string :artist_name
    end
  end
end
