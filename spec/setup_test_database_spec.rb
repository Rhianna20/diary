require 'pg'

def setup_test_database_spec
  p "setting up test database....wooo"
  connection = PG.connect(dbname: 'Diary_entries')
# clears bookmark table
  connection.exec("TRUNCATE diary_notes;")
end