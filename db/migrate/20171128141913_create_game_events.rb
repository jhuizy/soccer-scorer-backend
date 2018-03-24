class CreateGameEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :game_events do |t|
      t.references :game
      t.references :player
      t.string :type

      t.timestamps
    end
  end
end
