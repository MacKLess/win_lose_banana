class CreatePlayerRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :player_rounds do |t|
      t.string :card
      t.references :player, foreign_key: true
      t.references :round, foreign_key: true

      t.timestamps
    end
  end
end
