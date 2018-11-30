class ApplicationController < ActionController::Base
  before_action :authenticate_dog!, except: [:signup, :login, :landing]
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # def initialize
  #   super
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "yooooooooooooooooooooooooooooo"
  #   byebug
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  #   puts "******************************"
  # end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
