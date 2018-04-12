class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      def up
        t.references :home
        t.references :away
        t.datetime :time
        t.timestamps
        
    
        add_foreign_key :games, :teams, column: :home, primary_key: :id
        add_foreign_key :games, :teams, column: :away, primary_key: :id
      end

    end
  end
end
