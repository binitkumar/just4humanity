class CreatePageComments < ActiveRecord::Migration[5.0]
  def change
    create_table :page_comments do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.text :message

      t.timestamps
    end
  end
end
