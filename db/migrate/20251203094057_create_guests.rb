class CreateGuests < ActiveRecord::Migration[8.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
