class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
     t.string :type_of_land
     t.string :title
     t.decimal :price
     t.string :area
     t.string :city
     t.string :location
     t.text :description
     t.string :name
     t.boolean :gmaps
     t.string :email
     t.string :mobile
     t.float :latitude
     t.float :longitude
     t.integer :view_count
     t.integer :contact_count
     t.attachment :document
     t.string :state
     t.string :unit
     t.timestamps null: false
   end
 end
end
