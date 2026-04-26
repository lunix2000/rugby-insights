class CreateMatches < ActiveRecord::Migration[8.1]
  def change
    create_table :matches do |t|
      t.string :home_team
      t.string :away_team
      t.integer :home_score
      t.integer :away_score
      t.integer :possession
      t.integer :tackles_made
      t.integer :tackles_missed
      t.integer :penalties
      t.text :notes

      t.timestamps
    end
  end
end
