class CreateJoinTableEbooksUsers < ActiveRecord::Migration
  def change
    create_join_table :ebooks, :users
  end
end
