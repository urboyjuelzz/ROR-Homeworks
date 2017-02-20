class CreateEbooks < ActiveRecord::Migration
  def change
    create_table :ebooks do |t|
      t.integer :user_id
      t.string :title
      t.string :short_desc
      t.text  :body
      t.string :genre
      t.integer :cost
      t.timestamps null: false
    end
  end
end
