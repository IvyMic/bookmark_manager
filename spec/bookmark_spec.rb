require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      add_bookmarks_for_test
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")

    end
  end

  describe '.create' do
    it 'adds a bookmark to the database' do
      Bookmark.create('https://duckduckgo.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include 'https://duckduckgo.com'
    end
    
  end
end