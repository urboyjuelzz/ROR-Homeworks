class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :title
      t.string :short_description
      t.text :long_description

      t.timestamps null: false
    end
  end
end
