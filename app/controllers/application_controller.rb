class ApplicationController < ActionController::API
  include ActionController::Cookies

  private

  def authorize
    render json: {error: "Not authorized"}, status: :unauthorized unless session.include?("user_id")
  end

end
