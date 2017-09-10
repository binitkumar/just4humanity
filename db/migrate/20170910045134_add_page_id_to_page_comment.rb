class AddPageIdToPageComment < ActiveRecord::Migration[5.0]
  def change
    add_column :page_comments, :page_id, :integer
  end
end
