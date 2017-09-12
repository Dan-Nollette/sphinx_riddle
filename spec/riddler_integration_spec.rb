require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the failed riddle path', {:type => :feature}) do
  it('processes the user entry and returns the you failed response') do
    visit('/')
    fill_in('answer1', :with => '5')
    fill_in('answer2', :with => '5')
    fill_in('answer3', :with => '5')
    click_button('Go!')
    expect(page).to have_content('"You are wrong!" says The Sphinx. "Now I eat you." *nom, nom crunch*')
  end
end
describe('the successful riddle path', {:type => :feature}) do
  it('processes the user entry and returns the you successful response') do
    visit('/')
    fill_in('answer1', :with => 'human')
    fill_in('answer2', :with => 'palindrome')
    fill_in('answer3', :with => 'reflection')
    click_button('Go!')
    expect(page).to have_content('"You are right!" says The Sphinx. "Get all up in this city!"')
  end
end
