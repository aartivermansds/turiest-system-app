class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
        t.string :name
        t.string :zipcode
        t.string :city
        t.string :state
        t.text   :about

      t.timestamps null: false
    end
  end
end
