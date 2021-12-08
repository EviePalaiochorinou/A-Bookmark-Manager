feature 'visiting Bookmarks' do

  scenario 'shows bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
     # Add the test data
     Bookmark.create("http://www.makersacademy.com")
     Bookmark.create("http://www.destroyallsoftware.com")
     Bookmark.create("http://www.google.com/")

    visit('/bookmarks')
    expect(page).to have_content ["http://www.makersacademy.com", "http://www.destroyallsoftware.com", "http://www.google.com/"]
  end
end
