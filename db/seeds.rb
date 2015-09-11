# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
# ➜  ar_review  pry -r "./app.rb"
# [1] pry(main)> Developer.create(name: 'Bob', email: 'ok')
# D, [2015-09-10T21:32:08.560578 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:32:08.580741 #44273] DEBUG -- :   SQL (3.3ms)  INSERT INTO "developers" ("name", "email") VALUES ($1, $2) RETURNING "id"  [["name", "Bob"], ["email", "ok"]]
# D, [2015-09-10T21:32:08.588152 #44273] DEBUG -- :    (3.7ms)  COMMIT
# => #<Developer:0x007f82e93a5070
#  id: 1,
#  name: "Bob",
#  email: "ok",
#  phone_number: nil>
# [2] pry(main)> Developer.create(name: 'Bill')
# D, [2015-09-10T21:32:29.414569 #44273] DEBUG -- :    (0.3ms)  BEGIN
# D, [2015-09-10T21:32:29.473438 #44273] DEBUG -- :    (2.5ms)  ROLLBACK
# => #<Developer:0x007f82ec96a660
#  id: nil,
#  name: "Bill",
#  email: nil,
#  phone_number: nil>
# [3] pry(main)> Developer.all
# D, [2015-09-10T21:32:43.394521 #44273] DEBUG -- :   Developer Load (0.5ms)  SELECT "developers".* FROM "developers"
# => [#<Developer:0x007f82ec8e93d0
#   id: 1,
#   name: "Bob",
#   email: "ok",
#   phone_number: nil>]
# [4] pry(main)> Application.create(name: 'horizon', url: 'hello', description: 'learning')
# D, [2015-09-10T21:33:55.194741 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:33:55.199575 #44273] DEBUG -- :   SQL (2.8ms)  INSERT INTO "applications" ("name", "url", "description") VALUES ($1, $2, $3) RETURNING "id"  [["name", "horizon"], ["url", "hello"], ["description", "learning"]]
# D, [2015-09-10T21:33:55.203112 #44273] DEBUG -- :    (2.8ms)  COMMIT
# => #<Application:0x007f82ec8a2ef8
#  id: 1,
#  name: "horizon",
#  url: "hello",
#  description: "learning">
# [5] pry(main)> Application.create(name: 'hello', description: 'learning')
# D, [2015-09-10T21:34:16.211329 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:34:16.213735 #44273] DEBUG -- :    (0.3ms)  ROLLBACK
# => #<Application:0x007f82ea239f78
#  id: nil,
#  name: "hello",
#  url: nil,
#  description: "learning">
# [6] pry(main)> Application.create!(name: 'hello', description: 'learning')
# D, [2015-09-10T21:34:32.943361 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:34:32.945578 #44273] DEBUG -- :    (0.3ms)  ROLLBACK
# ActiveRecord::RecordInvalid: Validation failed: Url can't be blank
# from /Users/nattaylor/.gem/ruby/2.2.1/gems/activerecord-4.2.4/lib/active_record/validations.rb:79:in `raise_record_invalid'
# [7] pry(main)> sam = Developer.create(name: 'Sam', email: 'e')
# D, [2015-09-10T21:35:43.759996 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:35:43.761885 #44273] DEBUG -- :   SQL (0.4ms)  INSERT INTO "developers" ("name", "email") VALUES ($1, $2) RETURNING "id"  [["name", "Sam"], ["email", "e"]]
# D, [2015-09-10T21:35:43.765384 #44273] DEBUG -- :    (2.7ms)  COMMIT
# => #<Developer:0x007f82e983d588
#  id: 2,
#  name: "Sam",
#  email: "e",
#  phone_number: nil>
# [8] pry(main)> Developer.all
# D, [2015-09-10T21:35:49.666656 #44273] DEBUG -- :   Developer Load (0.5ms)  SELECT "developers".* FROM "developers"
# => [#<Developer:0x007f82e974bc88
#   id: 1,
#   name: "Bob",
#   email: "ok",
#   phone_number: nil>,
#  #<Developer:0x007f82e974bb20
#   id: 2,
#   name: "Sam",
#   email: "e",
#   phone_number: nil>]
# [9] pry(main)> app = Application.new(name: 'code', url: 'git')
# => #<Application:0x007f82e96c1740
#  id: nil,
#  name: "code",
#  url: "git",
#  description: nil>
# [10] pry(main)> Application.all
# D, [2015-09-10T21:36:49.982452 #44273] DEBUG -- :   Application Load (0.5ms)  SELECT "applications".* FROM "applications"
# => [#<Application:0x007f82e9600c48
#   id: 1,
#   name: "horizon",
#   url: "hello",
#   description: "learning">]
# [11] pry(main)> app.save
# D, [2015-09-10T21:37:40.470244 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:37:40.472116 #44273] DEBUG -- :   SQL (0.4ms)  INSERT INTO "applications" ("name", "url") VALUES ($1, $2) RETURNING "id"  [["name", "code"], ["url", "git"]]
# D, [2015-09-10T21:37:40.475361 #44273] DEBUG -- :    (2.3ms)  COMMIT
# => true
# [12] pry(main)> Application.all
# D, [2015-09-10T21:37:43.804496 #44273] DEBUG -- :   Application Load (0.5ms)  SELECT "applications".* FROM "applications"
# => [#<Application:0x007f82ea1929a8
#   id: 1,
#   name: "horizon",
#   url: "hello",
#   description: "learning">,
#  #<Application:0x007f82ea1923e0
#   id: 2,
#   name: "code",
#   url: "git",
#   description: nil>]
# [13] pry(main)> Assignment.create(developer: sam, application: app)
# D, [2015-09-10T21:38:41.081305 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:38:41.086877 #44273] DEBUG -- :   SQL (3.0ms)  INSERT INTO "assignments" ("developer_id", "application_id") VALUES ($1, $2) RETURNING "id"  [["developer_id", 2], ["application_id", 2]]
# D, [2015-09-10T21:38:41.090304 #44273] DEBUG -- :    (2.6ms)  COMMIT
# => #<Assignment:0x007f82e940fb28
#  id: 1,
#  developer_id: 2,
#  application_id: 2>
# [14] pry(main)> Bug.create(name: 'evil bug', date: Date.new(2001,2,3), application: app, developer: sam)
# ActiveRecord::UnknownAttributeError: unknown attribute 'date' for Bug.
# from /Users/nattaylor/.gem/ruby/2.2.1/gems/activerecord-4.2.4/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
# [15] pry(main)> Bug.create(name: 'evil bug', due: Date.new(2001,2,3), application: app, developer: sam)
# D, [2015-09-10T21:48:26.683233 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:48:26.693567 #44273] DEBUG -- :   SQL (4.7ms)  INSERT INTO "bugs" ("name", "due", "application_id", "developer_id") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "evil bug"], ["due", "2001-02-03"], ["application_id", 2], ["developer_id", 2]]
# D, [2015-09-10T21:48:26.697362 #44273] DEBUG -- :    (2.9ms)  COMMIT
# => #<Bug:0x007f82ec9a2010
#  id: 1,
#  name: "evil bug",
#  due: Sat, 03 Feb 2001,
#  developer_id: 2,
#  application_id: 2>
# [16] pry(main)> Bug.all
# D, [2015-09-10T21:48:42.907046 #44273] DEBUG -- :   Bug Load (0.6ms)  SELECT "bugs".* FROM "bugs"
# => [#<Bug:0x007f82ec9333b8
#   id: 1,
#   name: "evil bug",
#   due: Sat, 03 Feb 2001,
#   developer_id: 2,
#   application_id: 2>]
# [17] pry(main)> Bug.create(name: 'crap', due: Date.new(2001,2,3), application: app)
# D, [2015-09-10T21:49:11.487890 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:49:11.490207 #44273] DEBUG -- :   SQL (0.4ms)  INSERT INTO "bugs" ("name", "due", "application_id") VALUES ($1, $2, $3) RETURNING "id"  [["name", "crap"], ["due", "2001-02-03"], ["application_id", 2]]
# D, [2015-09-10T21:49:11.493440 #44273] DEBUG -- :    (2.5ms)  COMMIT
# => #<Bug:0x007f82ec8e3278
#  id: 2,
#  name: "crap",
#  due: Sat, 03 Feb 2001,
#  developer_id: nil,
#  application_id: 2>
# [18] pry(main)> Bug.all
# D, [2015-09-10T21:49:16.218197 #44273] DEBUG -- :   Bug Load (0.5ms)  SELECT "bugs".* FROM "bugs"
# => [#<Bug:0x007f82ea27b860
#   id: 1,
#   name: "evil bug",
#   due: Sat, 03 Feb 2001,
#   developer_id: 2,
#   application_id: 2>,
#  #<Bug:0x007f82ea27b720
#   id: 2,
#   name: "crap",
#   due: Sat, 03 Feb 2001,
#   developer_id: nil,
#   application_id: 2>]
# [19] pry(main)> Bug.create(name: 'no', due: Date.new(2001,2,3))        D, [2015-09-10T21:49:33.712316 #44273] DEBUG -- :    (0.2ms)  BEGIN
# D, [2015-09-10T21:49:33.714736 #44273] DEBUG -- :    (0.3ms)  ROLLBACK
# => #<Bug:0x007f82ec8425a8
#  id: nil,
#  name: "no",
#  due: Sat, 03 Feb 2001,
#  developer_id: nil,
#  application_id: nil>
# [20] pry(main)> exit
