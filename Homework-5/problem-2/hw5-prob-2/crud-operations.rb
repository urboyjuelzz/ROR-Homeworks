# Perform 10 C.R.U.D. operations!

Last login: Mon Feb 13 21:48:54 on ttys000
JOELs-MacBook-Air:~ joelceballos$ cd /Users/joelceballos/Documents/RubyOnRails101/ROR-Homeworks/Homework-5/problem-2/hw5-prob-2
JOELs-MacBook-Air:hw5-prob-2 joelceballos$ rails console
Running via Spring preloader in process 36479
Loading development environment (Rails 4.2.7.1)

***Operation 1 (Find all user records)
irb(main):001:0> User.all
  User Load (4.1ms)  SELECT "users".* FROM "users"
=> #<ActiveRecord::Relation [#<User id: 1, first_name: "Joel", last_name: "Ceballos", password: "LovetoCode", created: nil, email: "joel@gmail.com", created_at: "2017-02-13 21:05:54", updated_at: "2017-02-13 21:05:54">]>

***Operation 2 (Create a new user record)
irb(main):003:0* User.create(first_name: "Oriel", last_name: "Ceballos", password: "hatetocode", email: "oriel@gmail.com")
   (1.1ms)  begin transaction
  SQL (2.5ms)  INSERT INTO "users" ("first_name", "last_name", "password", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["first_name", "Oriel"], ["last_name", "Ceballos"], ["password", "hatetocode"], ["email", "oriel@gmail.com"], ["created_at", "2017-02-14 16:28:02.643042"], ["updated_at", "2017-02-14 16:28:02.643042"]]
   (1.2ms)  commit transaction
=> #<User id: 2, first_name: "Oriel", last_name: "Ceballos", password: "hatetocode", created: nil, email: "oriel@gmail.com", created_at: "2017-02-14 16:28:02", updated_at: "2017-02-14 16:28:02">


***Operation 3 (Deleting a table column)
JOELs-MacBook-Air:hw5-prob-2 joelceballos$ rails generate migration DeleteCreatedFromUser
Running via Spring preloader in process 38654
Expected string default value for '--jbuilder'; got true (boolean)
      invoke  active_record
      create    db/migrate/20170214194809_delete_created_from_user.rb
JOELs-MacBook-Air:hw5-prob-2 joelceballos$

        # it created the migrate and i had to write this code in it.. db > migrate
        class DeleteCreatedFromUser < ActiveRecord::Migration
          def change
            remove_column :users, :created, :datetime
          end
        end

JOELs-MacBook-Air:hw5-prob-2 joelceballos$ rake db:migrate
== 20170214194809 DeleteCreatedFromUser: migrating ============================
-- remove_column(:users, :created, :datetime)
   -> 0.0153s
== 20170214194809 DeleteCreatedFromUser: migrated (0.0154s) ===================

***Operation 4 (Find specific user with id)
irb(main):004:0> User.find(2)
  User Load (2.6ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
=> #<User id: 2, first_name: "Oriel", last_name: "Ceballos", password: "hatetocode", created: nil, email: "2017-02-14 16:28:02.643042", created_at: "2017-02-14 16:28:02", updated_at: nil>


***Operation 5 (Find specific user whos name exists?)
irb(main):008:0> User.exists?(first_name: 'oriel')
  User Exists (3.7ms)  SELECT  1 AS one FROM "users" WHERE "users"."first_name" = ? LIMIT 1  [["first_name", "oriel"]]
=> false

Operation 6 (count number of users records)
irb(main):013:0> User.count
   (0.3ms)  SELECT COUNT(*) FROM "users"
=> 5

***Operation 7 (assigned a variable to a user record id)
irb(main):014:0> joel = User.find(1)
  User Load (2.9ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
=> #<User id: 1, first_name: "Joel", last_name: "Ceballos", password: "LovetoCode", created: nil, email: "2017-02-13 21:05:54.662023", created_at: "2017-02-13 21:05:54", updated_at: nil>


***Operation 8 (Updated the last_name of an assigned variable)
irb(main):018:0> joel.last_name
=> "Ceballos"
irb(main):019:0> joel.last_name = "Adegbola"
=> "Adegbola"
irb(main):020:0> joel.last_name
=> "Adegbola"
irb(main):028:0> joel.save
   (22.6ms)  begin transaction
  SQL (7.1ms)  UPDATE "users" SET "last_name" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["last_name", "Adegbola"], ["updated_at", "2017-02-15 13:43:10.679247"], ["id", 1]]
   (15.7ms)  commit transaction
=> trueirb(main):028:0> joel.save
   (22.6ms)  begin transaction
  SQL (7.1ms)  UPDATE "users" SET "last_name" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["last_name", "Adegbola"], ["updated_at", "2017-02-15 13:43:10.679247"], ["id", 1]]
   (15.7ms)  commit transaction
=> true


***Operation 9 (Update multiple records for a modal/table)
irb(main):047:0> janeska.update(email: 'nena@yahoo.com', password: '12345')
   (7.7ms)  begin transaction
  SQL (3.7ms)  UPDATE "users" SET "email" = ?, "password" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["email", "nena@yahoo.com"], ["password", "12345"], ["updated_at", "2017-02-15 19:23:34.741527"], ["id", 3]]
   (1.5ms)  commit transaction
=> true
irb(main):048:0> janeska
=> #<User id: 3, first_name: "Janeska", last_name: "Ceballos", password: "12345", created: nil, email: "nena@yahoo.com", created_at: "2017-02-15 00:44:24", updated_at: "2017-02-15 19:23:34">


***Operation 9 (Deleting a record from an assigned var instance)
irb(main):050:0> oriel.delete
  SQL (19.3ms)  DELETE FROM "users" WHERE "users"."id" = ?  [["id", 2]]
=> #<User id: 2, first_name: "Oriel", last_name: "Ceballos", password: "hatetocode", created: nil, email: "2017-02-14 16:28:02.643042", created_at: "2017-02-14 16:28:02", updated_at: nil>
irb(main):051:0>
