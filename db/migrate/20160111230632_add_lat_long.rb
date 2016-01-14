class AddLatLong < ActiveRecord::Migration
  def change
    add_column :practitioners, :lat, :float
    add_column :practitioners, :long, :float
  end
end
