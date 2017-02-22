class EbooksUsers < ActiveRecord::Migration
  def change
    create_table :ebooks_users, :id => false do |t|
      t.integer :user_id, null: false
      t.integer :ebooks_id, null: false
    end
  end
end
