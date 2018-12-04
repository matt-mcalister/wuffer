require 'rails_helper'

RSpec.describe Follow, type: :model do
  it { should belong_to(:follower).class_name("Dog") }
  it { should belong_to(:following).class_name("Dog") }
end
