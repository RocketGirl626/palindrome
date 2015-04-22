require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the palindrome path', {:type => :feature}) do
  it('processes user input and checks to see if it is a palindrome') do
    visit('/')
    fill_in('string', :with => 'pap')
    click_button('Send')
    expect(page).to have_content('This is a palindrome')
  end
end
