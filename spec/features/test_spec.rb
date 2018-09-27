feature 'test' do
  scenario 'returns testing infrastructure on main page ' do
    visit '/'
    expect(page).to have_content('Bookmark manager')
  end
end