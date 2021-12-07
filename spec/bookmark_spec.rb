require 'bookmark'

describe '.all' do

  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.google.com/"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
  end 
end