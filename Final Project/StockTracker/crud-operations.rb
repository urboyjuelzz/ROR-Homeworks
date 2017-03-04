irb(main):004:0> StockQuote::Stock.quote('GOOG')
=> #<StockQuote::Stock:0x007fd1f01ea3b0 @response_code=200, @symbol="GOOG", @ask=829.95, @average_daily_volume=1482380.0, @bid=828.55, @ask_realtime=nil, @bid_realtime=nil, @book_value=201.12, @change_percent_change="-1.55 - -0.19%", @change=-1.55, @commission=nil, @currency="USD", @change_realtime=nil, @after_hours_change_realtime=nil, @dividend_share=nil, @last_trade_date="3/3/2017", @trade_date=nil, @earnings_share=27.88, @error_indicationreturnedforsymbolchangedinvalid=nil, @eps_estimate_current_year=33.33, @eps_estimate_next_year=38.82, @eps_estimate_next_quarter=8.08, @days_low=825.75, @days_high=831.36, @year_low=663.28, @year_high=841.95, @holdings_gain_percent=nil, @annualized_gain=nil, @holdings_gain=nil, @holdings_gain_percent_realtime=nil, @holdings_gain_realtime=nil, @more_info=nil, @order_book_realtime=nil, @market_capitalization="573.24B", @market_cap_realtime=nil, @ebitda="29.86B", @change_from_year_low=165.8, @percent_change_from_year_low="+25.00%", @last_trade_realtime_with_time=nil, @change_percent_realtime=nil, @change_from_year_high=-12.87, @percebt_change_from_year_high="-1.53%", @last_trade_with_time="4:00pm - <b>829.08</b>", @last_trade_price_only=829.08, @high_limit=nil, @low_limit=nil, @days_range="825.75 - 831.36", @days_range_realtime=nil, @fiftyday_moving_average=816.26, @two_hundredday_moving_average=787.88, @change_from_two_hundredday_moving_average=41.2, @percent_change_from_two_hundredday_moving_average="+5.23%", @change_from_fiftyday_moving_average=12.82, @percent_change_from_fiftyday_moving_average="+1.57%", @name="Alphabet Inc.", @notes=nil, @open=830.56, @previous_close=830.63, @price_paid=nil, @changein_percent="-0.19%", @price_sales=6.36, @price_book=4.13, @ex_dividend_date=nil, @pe_ratio=29.74, @dividend_pay_date=nil, @pe_ratio_realtime=nil, @peg_ratio=1.28, @price_eps_estimate_current_year=24.87, @price_eps_estimate_next_year=21.36, @shares_owned=nil, @short_ratio=1.21, @last_trade_time="4:00pm", @ticker_trend=nil, @oneyr_target_price=973.25, @volume=889390.0, @holdings_value=nil, @holdings_value_realtime=nil, @year_range="663.28 - 841.95", @days_value_change=nil, @days_value_change_realtime=nil, @stock_exchange="NMS", @dividend_yield=nil, @percent_change="-0.19%">
irb(main):005:0> StockQuote::Stock.quote('GOOG').close
=> nil
irb(main):007:0> StockQuote::Stock.quote('GOOG').previous_close
=> 830.63
irb(main):008:0> StockQuote::Stock.quote('GOOG').open
=> 830.56
irb(main):001:0> Stock.new_from_lookup('GOOG')
=> #<Stock id: nil, ticker: "GOOG", name: "Alphabet Inc.", last_price: #<BigDecimal:7fc2c3fc23c0,'0.83056E3',18(18)>, created_at: nil, updated_at: nil>
irb(main):002:0> Stock.new_from_lookup('FB')
=> #<Stock id: nil, ticker: "FB", name: "Facebook, Inc.", last_price: #<BigDecimal:7fc2c818aa28,'0.13663E3',18(18)>, created_at: nil, updated_at: nil>
irb(main):004:0> Stock.find_by_ticker('NFLX')
  Stock Load (1.2ms)  SELECT  "stocks".* FROM "stocks" WHERE "stocks"."ticker" = ?  ORDER BY "stocks"."id" ASC LIMIT 1  [["ticker", "NFLX"]]
=> nil
irb(main):005:0> 
