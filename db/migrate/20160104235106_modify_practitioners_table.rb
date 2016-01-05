class ModifyPractitionersTable < ActiveRecord::Migration
  def change
    add_column :practitioners, :header1, :string
    add_column :practitioners, :header2, :string
    add_column :practitioners, :header3, :string
    add_column :practitioners, :body, :string

    add_attachment :practitioners, :logo
    add_attachment :practitioners, :background_image

    drop_table :home
  end
end
