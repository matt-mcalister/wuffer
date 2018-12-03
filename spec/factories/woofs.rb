FactoryBot.define do
  factory :woof do
    dog
    text { "Woof Woof Woof Woof Woof!" }
    rewoof { nil }
  end

  factory :rewoof, class: "Woof" do
    association :dog, factory: :follower_dog
    association :rewoof, factory: :woof
    text { nil }
  end

  factory :no_content, class: "Woof" do
    dog
    text { nil }
    rewoof { nil }
  end

  factory :too_much_content, class: "Woof" do
    dog
    association :rewoof, factory: :woof
    text { "Woof Woof Woof" }
  end
end
