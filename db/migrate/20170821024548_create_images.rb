class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.string :imageable_type
      t.string :imageable_id

      t.timestamps null: false
    end
  end
end
