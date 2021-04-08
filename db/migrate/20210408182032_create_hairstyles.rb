class CreateHairstyles < ActiveRecord::Migration[6.0]
  def change
    create_table :hairstyles do |t|
      t.string :style
      t.integer :price
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
