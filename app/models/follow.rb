class Follow < ApplicationRecord
  belongs_to :follower, class_name: "Dog"
  belongs_to :following, class_name: "Dog"
end
