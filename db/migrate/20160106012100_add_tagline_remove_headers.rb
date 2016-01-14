class AddTaglineRemoveHeaders < ActiveRecord::Migration
  def change
    remove_column :practitioners, :header1
    remove_column :practitioners, :header2
    remove_column :practitioners, :header3
    add_column :practitioners, :tagline, :string
  end
end
