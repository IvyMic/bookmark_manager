feature 'User can add bookmark' do
  scenario 'A user adds a duckduckgo.com bookmark' do
    add_bookmarks_for_test
    visit '/bookmarks'
    fill_in 'bookmark_url', with: 'https://duckduckgo.com'
    click_button('Add Bookmark')
    expect(page).to have_content 'https://duckduckgo.com'
  end
end