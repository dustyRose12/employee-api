class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session #we changed this to null_session

  before_action :restrict_access

private #this makes the restrict_method private so you can't access it outside

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, token|
      User.find_by(api_key: api_key, email: request.headers['X-User-Email'])
    end
  end
end
