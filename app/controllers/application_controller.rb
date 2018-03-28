class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include Response
  include ExceptionHandler
  

  # Allow http requests other than GET from Postman
  skip_before_action :verify_authenticity_token

end
