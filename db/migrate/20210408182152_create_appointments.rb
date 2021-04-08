class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :customer, null: false, foreign_key: true
      t.references :hairstyle, null: false, foreign_key: true
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
