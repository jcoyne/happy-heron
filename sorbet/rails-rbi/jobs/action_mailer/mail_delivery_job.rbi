# typed: strong
# This is an autogenerated file for Rails' jobs.
# Please rerun bundle exec rake rails_rbi:jobs to regenerate.
class ActionMailer::MailDeliveryJob
  sig do
    params(
      mailer: T.untyped,
      mail_method: T.untyped,
      delivery_method: T.untyped,
      args: T.untyped,
      kwargs: T.untyped,
      params: T.untyped
    ).void
  end
  def self.perform_later(mailer, mail_method, delivery_method, args:, kwargs: nil, params: nil); end

  sig do
    params(
      mailer: T.untyped,
      mail_method: T.untyped,
      delivery_method: T.untyped,
      args: T.untyped,
      kwargs: T.untyped,
      params: T.untyped
    ).void
  end
  def self.perform_now(mailer, mail_method, delivery_method, args:, kwargs: nil, params: nil); end

  sig do
    params(
      wait: T.nilable(ActiveSupport::Duration),
      wait_until: T.nilable(T.any(ActiveSupport::TimeWithZone, Date, Time)),
      queue: T.nilable(T.any(String, Symbol)),
      priority: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def self.set(wait: nil, wait_until: nil, queue: nil, priority: nil); end
end
