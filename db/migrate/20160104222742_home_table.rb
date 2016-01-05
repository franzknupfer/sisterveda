class HomeTable < ActiveRecord::Migration
  def change
    create_table :home do |t|
      t.column :header1, :string
      t.column :header2, :string
      t.column :header3, :string
      t.column :body, :string
    end

    add_attachment :home, :logo
    add_attachment :home, :background_image
  end
end
