# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class Admin::AdminController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  include RedmineFilter
  include UserAuthenticatedSystem
  before_filter :user_login_required
  
  layout Proc.new { |c| c.request.format.js? ? false : 'admin' }
end
