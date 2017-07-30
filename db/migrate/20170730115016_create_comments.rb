class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :creator_id
      t.text :content
      t.integer :topic_id

      t.timestamps
    end
  end
end
