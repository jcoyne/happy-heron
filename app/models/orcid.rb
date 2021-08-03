# typed: strict
# frozen_string_literal: true

# Model for ORCID ids.
class Orcid
  PREFIX = 'https://orcid.org'
  SANDBOX_PREFIX = 'https://sandbox.orcid.org'
  # For example: https://orcid.org/0000-0003-1527-0030
  REGEX = T.let(%r{\A(#{PREFIX}|#{SANDBOX_PREFIX})/\d{4}-\d{4}-\d{4}-\d{3}[0-9X]\Z}.freeze, Regexp)
end
