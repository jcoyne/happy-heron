# frozen_string_literal: true

@form.errors.each do |key, value|
  # Transform the property name in the model to the value used by the javascript:
  json.set! normalize_key(key), [value]
end
