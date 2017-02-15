class DeleteCreatedFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :created, :datetime
  end
end
