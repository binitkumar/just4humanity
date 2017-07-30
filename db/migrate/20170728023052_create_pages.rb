class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :creator_id
      t.boolean :is_public
      t.datetime :reviewed_on
      t.integer :topic_id

      t.timestamps
    end
  end
end
