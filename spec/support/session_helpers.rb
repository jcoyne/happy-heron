# typed: true
# frozen_string_literal: true

module SessionHelpers
  def sign_in(user = nil, groups: [])
    TestShibbolethHeaders.user = user.login
    TestShibbolethHeaders.groups = groups
  end
end

RSpec.configure do |config|
  config.include SessionHelpers, type: :feature
  config.include SessionHelpers, type: :request
end
