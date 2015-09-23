class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :type
      t.integer :x_position
      t.integer :y_position
      t.integer :color
      t.string :image
      t.boolean :captured
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
