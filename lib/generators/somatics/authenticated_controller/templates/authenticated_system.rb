module <%= model_class_name %>AuthenticatedSystem
  protected
    # Returns true or false if the <%= file_name %> is logged in.
    # Preloads @current_<%= file_name %> with the <%= file_name %> model if they're logged in.
    def <%= file_name %>_logged_in?
      !!current_<%= file_name %>
    end

    # Accesses the current <%= file_name %> from the session.
    # Future calls avoid the database because nil is not equal to false.
    def current_<%= file_name %>
      @current_<%= file_name %> ||= (<%= file_name %>_login_from_session || <%= file_name %>_login_from_basic_auth || <%= file_name %>_login_from_cookie) unless @current_<%= file_name %> == false
    end

    # Store the given <%= file_name %> id in the session.
    def current_<%= file_name %>=(new_<%= file_name %>)
      session[:<%= file_name %>_id] = new_<%= file_name %> ? new_<%= file_name %>.id : nil
      @current_<%= file_name %> = new_<%= file_name %> || false
    end

    # Check if the <%= file_name %> is authorized
    #
    # Override this method in your controllers if you want to restrict access
    # to only a few actions or if you want to check if the <%= file_name %>
    # has the correct rights.
    #
    # Example:
    #
    #  # only allow nonbobs
    #  def authorized?
    #    current_<%= file_name %>.login != "bob"
    #  end
    #
    def <%= file_name %>_authorized?(action = action_name, resource = nil)
      <%= file_name %>_logged_in?
    end

    # Filter method to enforce a login requirement.
    #
    # To require logins for all actions, use this in your controllers:
    #
    #   before_filter :login_required
    #
    # To require logins for specific actions, use this in your controllers:
    #
    #   before_filter :login_required, :only => [ :edit, :update ]
    #
    # To skip this in a subclassed controller:
    #
    #   skip_before_filter :login_required
    #
    def <%= file_name %>_login_required
      <%= file_name %>_authorized? || <%= file_name %>_access_denied
    end

    # Redirect as appropriate when an access request fails.
    #
    # The default action is to redirect to the login screen.
    #
    # Override this method in your controllers if you want to have special
    # behavior in case the <%= file_name %> is not authorized
    # to access the requested action.  For example, a popup window might
    # simply close itself.
    def <%= file_name %>_access_denied
      respond_to do |format|
        format.html do
          store_location
          redirect_to <%= controller_routing_name %>_login_path
        end
        # format.any doesn't work in rails version < http://dev.rubyonrails.org/changeset/8987
        # Add any other API formats here.  (Some browsers, notably IE6, send Accept: */* and trigger 
        # the 'format.any' block incorrectly. See http://bit.ly/ie6_borken or http://bit.ly/ie6_borken2
        # for a workaround.)
        format.any(:json, :xml) do
          request_http_basic_authentication 'Web Password'
        end
      end
    end

    # Store the URI of the current request in the session.
    #
    # We can return to this location by calling #redirect_back_or_default.
    def store_location
      session[:return_to] = request.request_uri
    end

    # Redirect to the URI stored by the most recent store_location call or
    # to the passed default.  Set an appropriately modified
    #   after_filter :store_location, :only => [:index, :new, :show, :edit]
    # for any controller you want to be bounce-backable.
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

    # Inclusion hook to make #current_<%= file_name %> and #logged_in?
    # available as ActionView helper methods.
    def self.included(base)
      base.send :helper_method, :current_<%= file_name %>, :<%= file_name %>_logged_in?, :<%= file_name %>_authorized? if base.respond_to? :helper_method
    end

    #
    # Login
    #

    # Called from #current_<%= file_name %>.  First attempt to login by the <%= file_name %> id stored in the session.
    def <%= file_name %>_login_from_session
      self.current_<%= file_name %> = <%= model_class_name %>.find_by_id(session[:<%= file_name %>_id]) if session[:<%= file_name %>_id]
    end

    # Called from #current_<%= file_name %>.  Now, attempt to login by basic authentication information.
    def <%= file_name %>_login_from_basic_auth
      authenticate_with_http_basic do |login, password|
        self.current_<%= file_name %> = <%= model_class_name %>.authenticate(login, password)
      end
    end
    
    #
    # Logout
    #

    # Called from #current_<%= file_name %>.  Finaly, attempt to login by an expiring token in the cookie.
    # for the paranoid: we _should_ be storing <%= file_name %>_token = hash(cookie_token, request IP)
    def <%= file_name %>_login_from_cookie
      <%= file_name %> = cookies[:auth_token] && <%= model_class_name %>.find_by_remember_token(cookies[:auth_token])
      if <%= file_name %> && <%= file_name %>.remember_token?
        self.current_<%= file_name %> = <%= file_name %>
        <%= file_name %>_handle_remember_cookie! false # freshen cookie token (keeping date)
        self.current_<%= file_name %>
      end
    end

    # This is ususally what you want; resetting the session willy-nilly wreaks
    # havoc with forgery protection, and is only strictly necessary on login.
    # However, **all session state variables should be unset here**.
    def <%= file_name %>_logout_keeping_session!
      # Kill server-side auth cookie
      @current_<%= file_name %>.forget_me if @current_<%= file_name %>.is_a? <%= model_class_name %>
      @current_<%= file_name %> = false     # not logged in, and don't do it for me
      <%= file_name %>_kill_remember_cookie!     # Kill client-side auth cookie
      session[:<%= file_name %>_id] = nil   # keeps the session but kill our variable
      # explicitly kill any other session variables you set
    end

    # The session should only be reset at the tail end of a form POST --
    # otherwise the request forgery protection fails. It's only really necessary
    # when you cross quarantine (logged-out to logged-in).
    def <%= file_name %>_logout_killing_session!
      <%= file_name %>_logout_keeping_session!
      reset_session
    end
    
    #
    # Remember_me Tokens
    #
    # Cookies shouldn't be allowed to persist past their freshness date,
    # and they should be changed at each login

    # Cookies shouldn't be allowed to persist past their freshness date,
    # and they should be changed at each login

    def <%= file_name %>_valid_remember_cookie?
      return nil unless @current_<%= file_name %>
      (@current_<%= file_name %>.remember_token?) && 
        (cookies[:auth_token] == @current_<%= file_name %>.remember_token)
    end
    
    # Refresh the cookie auth token if it exists, create it otherwise
    def <%= file_name %>_handle_remember_cookie!(new_cookie_flag)
      return unless @current_<%= file_name %>
      case
      when <%= file_name %>_valid_remember_cookie? then @current_<%= file_name %>.refresh_token # keeping same expiry date
      when new_cookie_flag        then @current_<%= file_name %>.remember_me 
      else                             @current_<%= file_name %>.forget_me
      end
      <%= file_name %>_send_remember_cookie!
    end
  
    def <%= file_name %>_kill_remember_cookie!
      cookies.delete :auth_token
    end
    
    def <%= file_name %>_send_remember_cookie!
      cookies[:auth_token] = {
        :value   => @current_<%= file_name %>.remember_token,
        :expires => @current_<%= file_name %>.remember_token_expires_at }
    end

end
