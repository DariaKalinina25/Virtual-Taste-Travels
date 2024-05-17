# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User registration', type: :feature do
  scenario 'Sign up' do
    I18n.with_locale(:en) do
      visit new_user_registration_path

      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'password123'
      fill_in 'user_password_confirmation', with: 'password123'

      click_button 'Sign up'

      expect(page).to have_current_path(root_path)
    end
  end
end
