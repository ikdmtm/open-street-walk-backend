class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.integer :lat, null: false
      t.integer :lng, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
