class RestoreLocationsTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up    { t.string :country}
        dir.down  { t.remove :country, :string }

        dir.up    { t.string :street_name }
        dir.down  { t.remove :street_name, :string}

        dir.up    { t.integer :street_number }
        dir.down  { t.remove :street_number, :integer }

        dir.up    { t.string :postal_code }
        dir.down  { t.remove :postal_code, :string }

        dir.up    { t.remove :weather, :string}
        dir.down  { t.string :weather}
      end
    end
  end
end
