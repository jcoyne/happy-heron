# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/cocina-models/all/cocina-models.rbi
#
# cocina-models-0.61.2

module Cocina
end
module Cocina::Models
  def self.build(dyn, validate: nil); end
  def self.build_request(dyn, validate: nil); end
end
class CocinaModelsInflector < Zeitwerk::Inflector
  def camelize(basename, _abspath); end
end
class Cocina::Models::Error < StandardError
end
class Cocina::Models::UnknownTypeError < Cocina::Models::Error
end
class Cocina::Models::ValidationError < Cocina::Models::Error
end
class Cocina::Models::Struct < Dry::Struct
  extend Dry::Core::DescendantsTracker
end
module Cocina::Models::Types
  extend Anonymous_Dry_Core_Deprecations_Tagged_81
  extend Anonymous_Module_82
  extend Dry::Core::Deprecations::Interface
  extend Dry::Types::BuilderMethods
  include Anonymous_Dry_Types_Module_83
end
module Cocina::Models::Types::Definition
end
module Anonymous_Dry_Types_Module_83
  def self.included(base); end
  extend Dry::Types::BuilderMethods
end
module Anonymous_Dry_Core_Deprecations_Tagged_81
end
module Anonymous_Module_82
  def const_missing(missing); end
end
class Cocina::Models::Vocab
  def self.admin_policy; end
  def self.agreement; end
  def self.book; end
  def self.collection; end
  def self.curated_collection; end
  def self.document; end
  def self.exhibit; end
  def self.file; end
  def self.geo; end
  def self.image; end
  def self.manuscript; end
  def self.map; end
  def self.media; end
  def self.object; end
  def self.page; end
  def self.photograph; end
  def self.series; end
  def self.three_dimensional; end
  def self.track; end
  def self.user_collection; end
  def self.webarchive_binary; end
  def self.webarchive_seed; end
end
class Cocina::Models::Vocab::Resources
  def self.attachment; end
  def self.audio; end
  def self.document; end
  def self.file; end
  def self.image; end
  def self.main_augmented; end
  def self.main_original; end
  def self.media; end
  def self.object; end
  def self.page; end
  def self.permissions; end
  def self.preview; end
  def self.supplement; end
  def self.three_dimensional; end
  def self.thumb; end
  def self.video; end
end
