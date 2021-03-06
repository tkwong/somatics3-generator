# This controller handles the login/logout function of the site.  
class <%= sessions_controller_class_name %>Controller < <%= options[:admin_authenticated] ? "Admin::AdminController" : "ApplicationController" %>
  # Be sure to include AuthenticationSystem in Application Controller instead
  include <%= model_class_name %>AuthenticatedSystem
  skip_before_filter :<%= file_name %>_login_required
  # render new.rhtml
  def new
  end

  def create
    <%= file_name %>_logout_keeping_session!
    <%= file_name %> = <%= model_class_name %>.authenticate(params[:login], params[:password])
    if <%= file_name %>
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_<%= file_name %> = <%= file_name %>
      new_cookie_flag = (params[:remember_me] == "1")
      <%= file_name %>_handle_remember_cookie! new_cookie_flag
      redirect_back_or_default('/')
      flash[:notice] = "Logged in successfully"
    else
      note_failed_signin
      @login       = params[:login]
      @remember_me = params[:remember_me]
      redirect_to :action => 'new'
    end
  end

  def destroy
    <%= file_name %>_logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end

protected
  # Track failed login attempts
  def note_failed_signin
    flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
end
