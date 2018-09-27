require "pg"
class Bookmark
  def self.all
    connection = self.connect_db

    all_bookmarks = connection.exec "SELECT * FROM bookmarks"

    all_bookmarks.map { |row| row['url'] }
  end

  def self.create(url)
    connection = self.connect_db
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url.to_s}');")
  end

  private 
    def self.connect_db
      database = ENV['ENVIRONMENT'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
      connection = PG.connect(dbname: database)
    end
end