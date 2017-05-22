class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.references :episode, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
