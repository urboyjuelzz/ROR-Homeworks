class User < ActiveRecord::Base
  has_and_belongs_to_many :ebooks
  has_many :orders
end
