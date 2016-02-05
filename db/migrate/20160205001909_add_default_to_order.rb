class AddDefaultToOrder < ActiveRecord::Migration
  def change
    remove_column :services, :order, :int
    add_column :services, :order, :int, default: 1
  end
end
