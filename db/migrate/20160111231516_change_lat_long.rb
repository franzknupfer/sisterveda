class ChangeLatLong < ActiveRecord::Migration
  def change
    remove_column :practitioners, :lat
    remove_column :practitioners, :long
    add_column :practitioners, :latitude, :float
    add_column :practitioners, :longitude, :float
  end
end
