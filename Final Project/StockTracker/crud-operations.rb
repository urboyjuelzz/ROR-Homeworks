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
irb(main):001:0> Stock.all
  Stock Load (15.8ms)  SELECT "stocks".* FROM "stocks"
=> #<ActiveRecord::Relation [#<Stock id: 1, ticker: "AAPL", name: "Apple Inc.", last_price: #<BigDecimal:7fea0c091ef8,'0.13878E3',18(36)>, created_at: "2017-03-04 20:51:07", updated_at: "2017-03-04 20:51:07">, #<Stock id: 2, ticker: "FB", name: "Facebook, Inc.", last_price: #<BigDecimal:7fea0b31b058,'0.13663E3',18(36)>, created_at: "2017-03-04 20:59:12", updated_at: "2017-03-04 20:59:12">, #<Stock id: 3, ticker: "NFLX", name: "Netflix, Inc.", last_price: #<BigDecimal:7fea0b31a1a8,'0.13969E3',18(36)>, created_at: "2017-03-04 20:59:33", updated_at: "2017-03-04 20:59:33">, #<Stock id: 4, ticker: "GOOG", name: "Alphabet Inc.", last_price: #<BigDecimal:7fea0b3192f8,'0.83056E3',18(36)>, created_at: "2017-03-05 21:41:40", updated_at: "2017-03-05 21:41:40">, #<Stock id: 5, ticker: "MDBX", name: "MEDBOX INC", last_price: #<BigDecimal:7fea0b318448,'0.0',9(27)>, created_at: "2017-03-05 21:59:18", updated_at: "2017-03-05 21:59:18">, #<Stock id: 6, ticker: "MSN", name: "Emerson Radio Corporation", last_price: #<BigDecimal:7fea0c08b4e0,'0.127E1',18(36)>, created_at: "2017-03-05 21:59:28", updated_at: "2017-03-05 21:59:28">, #<Stock id: 7, ticker: "SNAP", name: "Snap Inc.", last_price: #<BigDecimal:7fea0c0884c0,'0.2639E2',18(36)>, created_at: "2017-03-05 21:59:33", updated_at: "2017-03-05 21:59:33">, #<Stock id: 8, ticker: "GPRO", name: "GoPro, Inc.", last_price: #<BigDecimal:7fea0c2b3240,'0.915E1',18(36)>, created_at: "2017-03-05 21:59:36", updated_at: "2017-03-05 21:59:36">, #<Stock id: 9, ticker: "TW", name: "Towers Watson & Co.", last_price: #<BigDecimal:7fea0c2b2390,'0.0',9(27)>, created_at: "2017-03-05 21:59:47", updated_at: "2017-03-05 21:59:47">, #<Stock id: 10, ticker: "MTN", name: "Vail Resorts, Inc.", last_price: #<BigDecimal:7fea0c2b1620,'0.18341E3',18(36)>, created_at: "2017-03-05 22:01:00", updated_at: "2017-03-05 22:01:00">]>
irb(main):002:0> user = User.first
  User Load (0.4ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1
=> #<User id: 1, email: "urboyjuelzz@gmail.com", created_at: "2017-03-03 22:44:31", updated_at: "2017-03-05 21:35:46">
irb(main):003:0> user.stocks
  Stock Load (0.6ms)  SELECT "stocks".* FROM "stocks" INNER JOIN "user_stocks" ON "stocks"."id" = "user_stocks"."stock_id" WHERE "user_stocks"."user_id" = ?  [["user_id", 1]]
=> #<ActiveRecord::Associations::CollectionProxy [#<Stock id: 1, ticker: "AAPL", name: "Apple Inc.", last_price: #<BigDecimal:7fea08a05448,'0.13878E3',18(36)>, created_at: "2017-03-04 20:51:07", updated_at: "2017-03-04 20:51:07">, #<Stock id: 2, ticker: "FB", name: "Facebook, Inc.", last_price: #<BigDecimal:7fea08a7bb20,'0.13663E3',18(36)>, created_at: "2017-03-04 20:59:12", updated_at: "2017-03-04 20:59:12">, #<Stock id: 3, ticker: "NFLX", name: "Netflix, Inc.", last_price: #<BigDecimal:7fea08a7ac70,'0.13969E3',18(36)>, created_at: "2017-03-04 20:59:33", updated_at: "2017-03-04 20:59:33">, #<Stock id: 4, ticker: "GOOG", name: "Alphabet Inc.", last_price: #<BigDecimal:7fea08a79dc0,'0.83056E3',18(36)>, created_at: "2017-03-05 21:41:40", updated_at: "2017-03-05 21:41:40">, #<Stock id: 5, ticker: "MDBX", name: "MEDBOX INC", last_price: #<BigDecimal:7fea08a78f10,'0.0',9(27)>, created_at: "2017-03-05 21:59:18", updated_at: "2017-03-05 21:59:18">, #<Stock id: 6, ticker: "MSN", name: "Emerson Radio Corporation", last_price: #<BigDecimal:7fea08a78178,'0.127E1',18(36)>, created_at: "2017-03-05 21:59:28", updated_at: "2017-03-05 21:59:28">, #<Stock id: 7, ticker: "SNAP", name: "Snap Inc.", last_price: #<BigDecimal:7fea089fdd38,'0.2639E2',18(36)>, created_at: "2017-03-05 21:59:33", updated_at: "2017-03-05 21:59:33">, #<Stock id: 8, ticker: "GPRO", name: "GoPro, Inc.", last_price: #<BigDecimal:7fea089fc230,'0.915E1',18(36)>, created_at: "2017-03-05 21:59:36", updated_at: "2017-03-05 21:59:36">, #<Stock id: 9, ticker: "TW", name: "Towers Watson & Co.", last_price: #<BigDecimal:7fea0c3972b0,'0.0',9(27)>, created_at: "2017-03-05 21:59:47", updated_at: "2017-03-05 21:59:47">]>
irb(main):004:0>
irb(main):005:0> Friendship.all
  Friendship Load (18.3ms)  SELECT "friendships".* FROM "friendships"
=> #<ActiveRecord::Relation []>
irb(main):006:0> Friendship
=> Friendship(id: integer, user_id: integer, friend_id: integer, created_at: datetime, updated_at: datetime)
irb(main):005:0> Friendship.all
  Friendship Load (18.3ms)  SELECT "friendships".* FROM "friendships"
=> #<ActiveRecord::Relation []>
irb(main):006:0> Friendship
=> Friendship(id: integer, user_id: integer, friend_id: integer, created_at: datetime, updated_at: datetime)
irb(main):007:0> exit
JOELs-MacBook-Air:StockTracker joelceballos$ rails c
Loading development environment (Rails 4.2.7.1)
irb(main):001:0> user = User.first
  User Load (0.3ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1
=> #<User id: 1, email: "urboyjuelzz@gmail.com", created_at: "2017-03-03 22:44:31", updated_at: "2017-03-06 03:40:10", first_name: "Joel", last_name: "Ceballos">
irb(main):002:0> User.all
  User Load (1.9ms)  SELECT "users".* FROM "users"
=> #<ActiveRecord::Relation [#<User id: 1, email: "urboyjuelzz@gmail.com", created_at: "2017-03-03 22:44:31", updated_at: "2017-03-06 03:40:10", first_name: "Joel", last_name: "Ceballos">, #<User id: 2, email: "addy@gmail.com", created_at: "2017-03-06 02:16:22", updated_at: "2017-03-06 02:16:22", first_name: "Adetoro", last_name: "Adegbola">]>
irb(main):003:0> user2 = User.find(2)
  User Load (1.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
=> #<User id: 2, email: "addy@gmail.com", created_at: "2017-03-06 02:16:22", updated_at: "2017-03-06 02:16:22", first_name: "Adetoro", last_name: "Adegbola">
irb(main):004:0> user.friends
  User Load (0.3ms)  SELECT "users".* FROM "users" INNER JOIN "friendships" ON "users"."id" = "friendships"."friend_id" WHERE "friendships"."user_id" = ?  [["user_id", 1]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):005:0> user.friends << user2
   (0.4ms)  begin transaction
  SQL (1.8ms)  INSERT INTO "friendships" ("user_id", "friend_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["user_id", 1], ["friend_id", 2], ["created_at", "2017-03-06 04:36:17.315756"], ["updated_at", "2017-03-06 04:36:17.315756"]]
   (1.1ms)  commit transaction
=> #<ActiveRecord::Associations::CollectionProxy [#<User id: 2, email: "addy@gmail.com", created_at: "2017-03-06 02:16:22", updated_at: "2017-03-06 02:16:22", first_name: "Adetoro", last_name: "Adegbola">]>
irb(main):006:0>
