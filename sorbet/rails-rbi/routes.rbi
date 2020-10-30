# typed: strong
# This is an autogenerated file for Rails routes.
# Please run bundle exec rake rails_rbi:routes to regenerate.
class ActionController::Base
  include GeneratedUrlHelpers
end

module ActionView::Helpers
  include GeneratedUrlHelpers
end

class ActionMailer::Base
  include GeneratedUrlHelpers
end

module GeneratedUrlHelpers
  # Sigs for route /status
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_url(*args, **kwargs); end

  # Sigs for route /webauth/login(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_session_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_user_session_url(*args, **kwargs); end

  # Sigs for route /webauth/logout(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_user_session_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def destroy_user_session_url(*args, **kwargs); end

  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_url(*args, **kwargs); end

  # Sigs for route /dashboard(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def dashboard_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def dashboard_url(*args, **kwargs); end

  # Sigs for route /collections/:collection_id/works(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collection_works_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collection_works_url(*args, **kwargs); end

  # Sigs for route /collections/:collection_id/works/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_collection_work_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_collection_work_url(*args, **kwargs); end

  # Sigs for route /works/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def work_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def work_url(*args, **kwargs); end

  # Sigs for route /collections(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collections_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collections_url(*args, **kwargs); end

  # Sigs for route /collections/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_collection_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_collection_url(*args, **kwargs); end

  # Sigs for route /collections/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_collection_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_collection_url(*args, **kwargs); end

  # Sigs for route /collections/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collection_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def collection_url(*args, **kwargs); end

  # Sigs for route /queues
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sidekiq_web_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sidekiq_web_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/blobs/:signed_id/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_token(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/direct_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_url(*args, **kwargs); end
end

module GeneratedUrlHelpers
  # Sigs for route /
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def root_url(*args, **kwargs); end

  # Sigs for route /all(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_checks_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_checks_url(*args, **kwargs); end

  # Sigs for route /:check(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_check_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def okcomputer_check_url(*args, **kwargs); end
end
