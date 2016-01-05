class ServicesTable < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :cost, :integer
      t.column :duration, :integer
    end

    add_attachment :services, :attached_image
  end
end
