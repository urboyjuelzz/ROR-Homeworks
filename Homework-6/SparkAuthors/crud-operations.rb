irb(main):012:0> User.find(3).ebooks
  User Load (12.0ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 3]]
  Ebook Load (0.7ms)  SELECT "ebooks".* FROM "ebooks" INNER JOIN "ebooks_users" ON "ebooks"."id" = "ebooks_users"."ebook_id" WHERE "ebooks_users"."user_id" = ?  [["user_id", 3]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):013:0>

irb(main):010:0> User.last.ebooks
  User Load (13.5ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" DESC LIMIT 1
  Ebook Load (3.5ms)  SELECT "ebooks".* FROM "ebooks" INNER JOIN "ebooks_users" ON "ebooks"."id" = "ebooks_users"."ebook_id" WHERE "ebooks_users"."user_id" = ?  [["user_id", 13]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):011:0>

irb(main):038:0> Ebook.first.user
  Ebook Load (0.4ms)  SELECT  "ebooks".* FROM "ebooks"  ORDER BY "ebooks"."id" ASC LIMIT 1
  User Load (0.3ms)  SELECT "users".* FROM "users" INNER JOIN "ebooks_users" ON "users"."id" = "ebooks_users"."user_id" WHERE "ebooks_users"."ebook_id" = ?  [["ebook_id", 2]]
=> #<ActiveRecord::Associations::CollectionProxy []>

irb(main):040:0> Ebook.last.user
  Ebook Load (0.4ms)  SELECT  "ebooks".* FROM "ebooks"  ORDER BY "ebooks"."id" DESC LIMIT 1
  User Load (7.9ms)  SELECT "users".* FROM "users" INNER JOIN "ebooks_users" ON "users"."id" = "ebooks_users"."user_id" WHERE "ebooks_users"."ebook_id" = ?  [["ebook_id", 5]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):041:0> user
=> #<User id: 3, first_name: "Joel", last_name: "Ceballos", gender: "male", email: "joel@gmail.com", age: 31, created_at: "2017-02-26 16:31:26", updated_at: "2017-02-26 17:25:35">
irb(main):042:0> user = User.create
   (2.3ms)  begin transaction
  SQL (4.3ms)  INSERT INTO "users" ("created_at", "updated_at") VALUES (?, ?)  [["created_at", "2017-03-01 15:44:52.561235"], ["updated_at", "2017-03-01 15:44:52.561235"]]
   (1.4ms)  commit transaction
=> #<User id: 15, first_name: nil, last_name: nil, gender: nil, email: nil, age: nil, created_at: "2017-03-01 15:44:52", updated_at: "2017-03-01 15:44:52">
irb(main):043:0> user = (first_name: MC, last_name: hammer, gender: male, email: hammer@test.com, age:50)

irb(main):004:0> User
=> User(id: integer, first_name: string, last_name: string, gender: string, email: string, age: integer, created_at: datetime, updated_at: datetime)
irb(main):005:0> user = User.create(first_name: 'Archie', last_name: 'Tarzian', gender: 'male', email: 'archie@gmail.com', age: 56)
   (0.1ms)  begin transaction
  SQL (1.9ms)  INSERT INTO "users" ("first_name", "last_name", "gender", "email", "age", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["first_name", "Archie"], ["last_name", "Tarzian"], ["gender", "male"], ["email", "archie@gmail.com"], ["age", 56], ["created_at", "2017-03-01 16:19:47.354257"], ["updated_at", "2017-03-01 16:19:47.354257"]]
   (1.2ms)  commit transaction
=> #<User id: 17, first_name: "Archie", last_name: "Tarzian", gender: "male", email: "archie@gmail.com", age: 56, created_at: "2017-03-01 16:19:47", updated_at: "2017-03-01 16:19:47">
irb(main):006:0> Ebook
=> Ebook(id: integer, user_id: integer, title: string, short_desc: string, body: text, genre: string, cost: integer, created_at: datetime, updated_at: datetime)
irb(main):007:0> ebook = Ebook.create(title: 'My life in finance', short_desc:'30 years of this shit!', body: 'Doing this job has provided for my fam but ate at my soul', genre: 'autobiography', cost: 20)
   (1.1ms)  begin transaction
  SQL (1.7ms)  INSERT INTO "ebooks" ("title", "short_desc", "body", "genre", "cost", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["title", "My life in finance"], ["short_desc", "30 years of this shit!"], ["body", "Doing this job has provided for my fam but ate at my soul"], ["genre", "autobiography"], ["cost", 20], ["created_at", "2017-03-01 16:35:26.499686"], ["updated_at", "2017-03-01 16:35:26.499686"]]
   (1.3ms)  commit transaction
=> #<Ebook id: 7, user_id: nil, title: "My life in finance", short_desc: "30 years of this shit!", body: "Doing this job has provided for my fam but ate at ...", genre: "autobiography", cost: 20, created_at: "2017-03-01 16:35:26", updated_at: "2017-03-01 16:35:26">
