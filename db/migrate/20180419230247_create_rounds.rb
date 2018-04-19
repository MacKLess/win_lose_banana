class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.string :outcome
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
