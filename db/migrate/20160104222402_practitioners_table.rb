class PractitionersTable < ActiveRecord::Migration
  def change
    create_table :practitioners do |t|
      t.column :name, :string
      t.column :bio, :string
      t.column :address, :string
      t.column :phone, :integer
      t.column :email, :string
    end

    add_attachment :practitioners, :attached_image
  end
end
