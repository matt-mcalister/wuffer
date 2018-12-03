require 'rails_helper'

RSpec.describe "home/landing.html.erb", type: :view do

  it "renders a button to login" do
    render

    rendered.should match "Login"
  end
  it "renders a button to sign up" do
    render

    rendered.should match "Sign Up"
  end
end
