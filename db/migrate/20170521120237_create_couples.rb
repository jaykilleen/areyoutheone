class CreateCouples < ActiveRecord::Migration[5.1]
  def change
    create_table :couples do |t|
      t.integer :first_character_id
      t.integer :second_character_id

      t.timestamps
    end
  end
end
