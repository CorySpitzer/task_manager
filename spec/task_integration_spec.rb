require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the tasks path', :type => :feature) do
  it('visit index and process user input') do
    visit('/')
    fill_in('task-description', :with => 'pet the zebra')
    click_button('add task')
    expect(page).to(have_content('Task: pet the zebra'))
  end
end

describe('the clear path', :type => :feature) do
  it('clears all tasks from the Task Manager') do
    visit('/')
    fill_in('task-description', :with => 'pet the zebra')
    click_button('add task')
    click_link('Back')

    click_button('clear all tasks')
    expect(page).not_to(have_content('Task: pet the zebra'))
  end
end
