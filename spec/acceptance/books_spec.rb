require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Books" do
  background do
    Factory :hajicuke
  end

  scenario "一覧画面" do
    visit books_path
    page.should have_content('はじめる')
  end

  context 'coming_soon' do
    scenario '検索' do
      visit books_path
      fill_in 'status', :with => 'coming_soon'
      click_button '検索'

      page.should_not have_content('はじめる')
    end
  end
end
