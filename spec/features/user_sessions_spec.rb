# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  let(:user) { create(:user) }

  scenario 'User can log in with valid credentials' do
    visit new_user_session_path

    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password

    click_button 'Войти'

    expect(page).to have_current_path(root_path)
  end
end
