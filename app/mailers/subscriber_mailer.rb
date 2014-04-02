class SubscriberMailer < ActionMailer::Base
  default from: "hi@yourapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.new_subscription.subject
  #
  def new_subscription(subscriber)
    @subscriber = subscriber

    mail to: "you@yourapp.com", subject: "New Subscriber"
  end
end
