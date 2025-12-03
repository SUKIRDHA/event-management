class CreateParties < ActiveRecord::Migration[8.1]
  def change
    create_table :parties do |t|
      t.string :party_name
      t.datetime :date_time
      t.text :notes

      t.timestamps
    end
  end
end
