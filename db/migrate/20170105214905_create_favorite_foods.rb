class CreateFavoriteFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_foods do |t|
      t.references :puggle, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
