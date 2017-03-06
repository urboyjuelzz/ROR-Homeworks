class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => 'User' #We never created a friends model, so we directed the friend_id to navigate to the User class.
end
