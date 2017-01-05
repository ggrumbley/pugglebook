class CreatePuggles < ActiveRecord::Migration[5.0]
  def change
    create_table :puggles do |t|
      t.string :name
      t.string :color
      t.string :build
      t.string :temperament

      t.timestamps
    end
  end
end
