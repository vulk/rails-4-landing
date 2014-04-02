class StaticController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]
  def index
    @subscriber = Subscriber.new
    # mixpanel.track "Landing page viewed" - Uncomment after mixpanel setup in application_controller.rb
  end

  def about

  end

end
