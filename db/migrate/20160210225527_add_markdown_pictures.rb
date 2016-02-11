class AddMarkdownPictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.column :name, :string
      t.column :alt_text, :string
    end

    add_attachment :pictures, :markdown_picture
  end
end
