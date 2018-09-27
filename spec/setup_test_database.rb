require 'pg'

def setup_test_database
  con = PG.connect :dbname => 'bookmark_manager_test', :user => 'ibra'
  con.exec("TRUNCATE bookmarks;")
end

def add_bookmarks_for_test
  connection = PG.connect(dbname: 'bookmark_manager_test')
  # Add the test data
  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")  
end
