class Addadmintouser < ActiveRecord::Migration
  def change
    add_column(:users, :admin, :boolean)
    add_column(:users, :name, :string)
    add_column(:users, :headline, :string)
    add_column(:users, :profile, :text)
  end
end
