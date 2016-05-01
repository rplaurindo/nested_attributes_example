class ApplicationController < ActionController::Base
  # Prevent CSRF (Cross Site Request Forgery) attacks by raising an exception.
  # protect_from_forgery with: :exception

  protect_from_forgery with: :exception, if: Proc.new { |c| c.request.format != 'application/json' }
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

end
