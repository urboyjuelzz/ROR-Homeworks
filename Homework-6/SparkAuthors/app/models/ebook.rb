class Ebook < ActiveRecord::Base
  has_and_belongs_to_many :user # foreign key - user_id
end
