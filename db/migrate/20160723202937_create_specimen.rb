class CreateSpecimen < ActiveRecord::Migration[5.0]
  def change
    create_table :specimen do |t|
      t.string :sample_name
      t.date :date_received
      t.string :sample_type

      t.timestamps
    end
  end
end
