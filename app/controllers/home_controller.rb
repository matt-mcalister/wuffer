class HomeController < ApplicationController
  def landing
    if current_dog
      render :home
    else
      render :landing
    end
  end
end
