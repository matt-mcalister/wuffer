class Woof < ApplicationRecord
  belongs_to :dog
  belongs_to :rewoof, class_name: "Woof", optional: true
end
