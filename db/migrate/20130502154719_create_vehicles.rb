class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :color
      t.string :brand
      t.string :model
      t.references :type_vehicle
      t.references :user

      t.timestamps
    end
    add_index :vehicles, :type_vehicle_id
    add_index :vehicles, :user_id
  end
end
