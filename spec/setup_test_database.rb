require 'pg'

def setup_test_database
  "Setting up test database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks table
  connection.exec("DROP TABLE bookmarks;")
  connection.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
#  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
#  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
#  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
end