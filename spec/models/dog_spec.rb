require 'rails_helper'

RSpec.describe Dog, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it do
       should validate_length_of(:username).
       is_at_least(8).
       on(:create)
   end
   it { should have_many(:woofs) }

   it { should have_many(:followers).class_name("Follow") }
   it { should have_many(:followings).class_name("Follow") }

   it "responds to a method #feed that returns an array of all woofs related to dog sorted by date" do
     stella = FactoryBot.build_stubbed(:stella)
     scarlet = FactoryBot.build_stubbed(:scarlet)
   end
end
