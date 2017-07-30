class AddStatusToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :status, :string, default: 'pending'
  end
end
