# This causes the class to load.
#
# This happens in the test environment before the DB is prepared, so setting up
# the vlfd gem happens before the column names are available and so the
# validators aren't added.
#
# If you comment it out, the class is loaded after the DB's prepared.
#
Post
