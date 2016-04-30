class ApplicationController < ActionController::Base
  # Prevent CSRF (Cross Site Request Forgery) attacks by raising an exception.
  # protect_from_forgery with: :exception

  protect_from_forgery with: :exception, if: Proc.new { |c| c.request.format != 'application/json' }
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def form_parent
    @@form_parent
  end

  def store_form object
    @@form_parent = object
  end
  helper_method :form_parent, :store_form

  protected

    def id
      params[:id]
    end

end