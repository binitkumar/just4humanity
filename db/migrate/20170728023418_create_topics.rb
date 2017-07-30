class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :preface
      t.integer :subject_id
      t.datetime :closing_time
      t.integer :prefacer

      t.timestamps
    end
  end
end
