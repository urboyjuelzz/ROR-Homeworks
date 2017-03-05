class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #  Relationships
   has_many :user_stocks
   has_many :stocks, through: :user_stocks


  #  setting business rules

  #  method that see's if the user can add a stock. checks to see if the user is under the stock limit or if the stock was already added.
   def can_add_stock?(ticker_symbol)
     under_stock_limit? && !stock_already_added?(ticker_symbol)
   end
   def under_stock_limit?
     (user_stocks.count < 10)
   end
   def stock_already_added?(ticker_symbol)
     stock = Stock.find_by_ticker(ticker_symbol)
     return false unless stock
     user_stocks.where(stock_id: stock.id).exists?
   end

end