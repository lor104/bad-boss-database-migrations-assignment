class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.string :street_name
      t.integer :street_number
      t.string :postal_code
    end
  end
end
