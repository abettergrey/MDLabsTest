class CreatePhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
      t.string :phsician_name
      t.string :physician_phone_number
      t.string :phsician_type

      t.timestamps
    end
  end
end
