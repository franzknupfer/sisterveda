class ChangeMarkdownPictureAttachmentName < ActiveRecord::Migration
  def change
    remove_attachment :pictures, :markdown_picture
    add_attachment :pictures, :markdown_image
  end
end
