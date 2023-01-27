require 'rails_helper'

RSpec.describe 'Creating a task', type: :feature do
  scenario 'valid inputs' do
    visit new_task_path
    fill_in "task[name]", with: 'sweeping'
    click_on 'Create Task'
    visit tasks_path
    expect(page).to have_content('sweeping')
  end
end
