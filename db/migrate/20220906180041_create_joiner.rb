class CreateJoiner < ActiveRecord::Migration[5.2]
  def change
    create_table :joiners do |t|
      t.integer :karaoke_singer_id
      t.integer :song_id
    end
  end
end
