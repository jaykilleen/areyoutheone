class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.references :season, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
