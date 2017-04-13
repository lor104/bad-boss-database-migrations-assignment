class ChangeLocations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up    { t.remove :country, :string }
        dir.down  { t.string :country}

        dir.up    { t.remove :street_name, :string}
        dir.down  { t.string :street_name }

        dir.up    { t.remove :street_number, :integer }
        dir.down  { t.integer :street_number }

        dir.up    { t.remove :postal_code, :string }
        dir.down  { t.string :postal_code }

        dir.up    { t.string :weather}
        dir.down  { t.remove :weather, :string}
      end
    end
  end
end

# t.string  "country"
# t.string  "city"
# t.string  "street_name"
# t.integer "street_number"
# t.string  "postal_code"
