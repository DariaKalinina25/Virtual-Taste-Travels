# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'devise modules' do
    it { should respond_to(:email) }
    it { should respond_to(:encrypted_password) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:remember_created_at) }
    it { should respond_to(:reset_password_token) }
    it { should respond_to(:reset_password_sent_at) }
    it { should respond_to(:remember_created_at) }
  end
end
