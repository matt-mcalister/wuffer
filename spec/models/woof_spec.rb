require 'rails_helper'

RSpec.describe Woof, type: :model do
  it { should belong_to(:dog) }

  it "raises an error if it contains no text or rewoof_id" do
    woof = FactoryBot.build_stubbed(:no_content)
    woof.valid?
    woof.errors.full_messages.should include("Woof must contain either text or a rewoof_id")
  end

  it "has a rewoof_id if it has no text" do
    original_woof = FactoryBot.build_stubbed(:woof)
    rewoof = FactoryBot.build_stubbed(:rewoof, rewoof: original_woof)
    rewoof.rewoof.should eq(original_woof)
    rewoof.text.should be_nil
  end

  it "has text if it has no rewoof_id" do
    text = "Woof woof!"
    woof = FactoryBot.build_stubbed(:woof, text: text)
    woof.rewoof.should be_nil
    woof.text.should eq(text)
  end

  it "raises an error if it has both text and a rewoof_id" do
    woof = FactoryBot.build_stubbed(:too_much_content)
    woof.valid?
    woof.errors.full_messages.should include("Woof must not have both text and a rewoof_id")
  end


  it "should respond to the method 'orginal_dog', which returns the author dog if it is a rewoof" do
    dog = FactoryBot.build_stubbed(:dog)
    original_woof = FactoryBot.build_stubbed(:woof, dog: dog)
    rewoof = FactoryBot.build_stubbed(:rewoof, rewoof: original_woof)
    rewoof.orginal_dog.should eq(dog)
  end

end
