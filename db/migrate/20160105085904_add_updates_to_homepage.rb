class AddUpdatesToHomepage < ActiveRecord::Migration
  def change
    add_column :practitioners, :current_news, :string
  end
end
