class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :occupation
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
