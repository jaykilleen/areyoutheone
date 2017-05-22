class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.references :user, foreign_key: true
      t.string :result
      t.integer :prize

      t.timestamps
    end
  end
end
