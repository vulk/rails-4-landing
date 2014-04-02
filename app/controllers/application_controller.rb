class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_filter :set_meta_data

  def set_meta_data(title="App Title", keywords="your, app, keywords", description="A description of your app.")
    @meta_title, @meta_keywords, @meta_description = title, keywords, description
  end

  # Higly recommend using Mixpanel.com to track conversion on landing page
  # Just sign up and insert API tokens below
  # def mixpanel
  #   if Rails.env.production?
  #     # Production Mixpannel Application
  #     @mixpanel ||= Mixpanel::Tracker.new "YourProductionTokenHere", { :env => request.env }
  #   else
  #     # Development Mixpannel Application
  #     @mixpanel ||= Mixpanel::Tracker.new "YourDevelopmentTokenHere", { :env => request.env }
  #   end
  # end
end
