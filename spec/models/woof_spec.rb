require 'rails_helper'

RSpec.describe Woof, type: :model do
  it { should belong_to(:dog) }

  it "raises an error if it contains no text or rewoof_id" do
    woof = FactoryBot.build(:no_content)
    woof.valid?
    woof.errors.full_messages.should include("Woof must contain either text or a rewoof_id")
  end

  it "has a rewoof_id if it has no text" do

  end

  it "has text if it has no rewoof_id" do

  end

  it "raises an error if it has both text and a rewoof_id" do

  end

  # woof should know how many times it has been rewoofed (rewoof_count)

  # REWOOF
  # if it is a rewoof, it should respond to the method "original_dog",
    # which gives back the dog object that is the author of the original woof


end
