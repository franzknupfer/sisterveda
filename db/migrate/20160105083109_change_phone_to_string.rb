class ChangePhoneToString < ActiveRecord::Migration
  def change
    remove_column :practitioners, :phone
    add_column :practitioners, :phone, :string
  end
end
