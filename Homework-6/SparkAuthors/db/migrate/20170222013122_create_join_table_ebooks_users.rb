class CreateJoinTableEbooksUsers < ActiveRecord::Migration
  def change
    create_join_table :ebooks, :users do |t|
      t.index [:ebook_id, :user_id]
      t.index [:user_id, :ebook_id]
    end
  end
end
