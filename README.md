# validates_lengths_from_database example

This demonstrates an issue with running tests when using the
validates_lengths_from_database gem.

Run `rake test` and the test fails on the first time, run it again and it will
pass.

If you delete db/test.sqlite3 and run it again, it'll fail again on the first
time.

If you remove the reference to `Post` from config/initializers/break_posts.rb
then it should pass every time.  The class is getting loaded before the Rails
test helper initialises the database, so the vlfd gem doesn't set up the
required validations.
