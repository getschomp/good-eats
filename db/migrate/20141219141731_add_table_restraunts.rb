class AddTableRestraunts < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.string :description

      t.timestamps
    end
  end
end

#name, address, city, state, and zip code. It can optionally have a description and a category
