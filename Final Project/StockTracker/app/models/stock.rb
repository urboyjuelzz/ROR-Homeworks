class Stock < ActiveRecord::Base
  # We are adding the self. prior to the method name, because these methods are not tied to any objects or object lifecycle, we need to be able to use them without having any instances of a stock.

  # Your looking for an existing ticker_symbol, where the ticker: key is givent the ticker symbol argument first.
  def self.find_by_ticker(ticker_symbol)
    where(ticker: ticker_symbol).first
  end

  # def a var tha let you look for a stock symbol that DOES NOT EXIST in the database. Then assign a var to the newly looked up stock quote (ticker_symbol) and gives it a new_stock price based on the last_price. It returns niil unless a stock name is found.
  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    return nil unless looked_up_stock.name

    # assingin a new_stock var to new instance where the ticker: key is given the looked_up_stock.symbol, and the name:key is is given the looked_up_stock.name.
    new_stock = new(ticker: looked_up_stock.symbol, name: looked_up_stock.name)

    # Calling the new looked_up_stock's last_price method and assinging it a new_stock.price method
    new_stock.last_price = new_stock.price

    # calling the new stock var which should be the newly assinged price for the looked_up_stockthat wsas that wasnt in the system.
    new_stock
  end

  #  Def a method that creates a price. closing_price and opening_price.
  def price
    # Creating a var that looks up closing_price by calling the close method for a looked up stock ticker. Then returns the closing_price with the word "Closing" if the closing_price is not nil.
    closing_price = StockQuote::Stock.quote(ticker).close
    return "#{closing_price} (Closing)" if closing_price

    # Creating a var that looks up the opening_price by calling the opening method for a looked up stock ticker. Then returns the opening_price with the word "Opening" if the opening_price is not nil.
    opening_price = StockQuote::Stock.quote(ticker).open
    return "#{opening_price} (Opening)" if opening_price

    # Return "Unavalable if the stock is ticker price is nil."
    'Unavailable'
  end
end
