require 'rails_helper'

RSpec.describe "home/landing.html.erb", type: :view do

  it "renders a button to login" do
    render

    expect(rendered).to match "Login"
  end
  it "renders a button to sign up" do
    render

    expect(rendered).to match "Sign Up"
  end
end
