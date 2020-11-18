# frozen_string_literal: true

@form.errors.each do |key, value|
  # Transform the property name in the model to the value used by the javascript:
  json.set! key == :attached_files ? 'file' : key, [value]
  json.set! key == :embargo_date ? 'embargo-date' : key, [value]
end
