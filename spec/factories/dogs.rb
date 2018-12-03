FactoryBot.define do
  factory :dog, aliases: [:stella, :original_dog] do
    username { "stella_pup" }
    image_url { "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12235916/Border-Terrier-On-White-03.jpg" }
    email { "email@email.gov" }
    password { "somethingsecure"}
  end

  factory :other_dog, aliases: [:scarlet, :follower_dog] do
    username { "scarlet_pup" }
    image_url { "https://upload.wikimedia.org/wikipedia/commons/b/b6/Australian_Terrier_adult_male.jpg" }
    email { "other@email.gov" }
    password { "somethingsecure"}
  end
end
