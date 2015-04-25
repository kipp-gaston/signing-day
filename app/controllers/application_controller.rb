class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound,
              ActionView::MissingTemplate,
              with: :render_404

  def render_404
    render template: 'shared/404', formats: [:html], status: 404
  end
end
