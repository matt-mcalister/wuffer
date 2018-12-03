class HomeController < ApplicationController
  def landing
    if current_dog
      @woofs = Woof.all
      render :home
    else
      render :landing
    end
  end
end
