class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :person
      t.references :team

      t.timestamps
    end
  end
end
