class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :result_value
      t.datetime :reported_at

      t.timestamps
    end
  end
end
