class Woof < ApplicationRecord
  belongs_to :dog
  belongs_to :rewoof, class_name: "Woof", optional: true
  validate :no_content, :too_much_content

  def original_dog
    rewoof ? rewoof.dog : dog
  end

  private
  def no_content
    if text.nil? && rewoof_id.nil?
      errors.add(:rewoof_id, "must exist if there is no text")
      errors.add(:text, "must exist if it is not a rewoof")
    end
  end

  def too_much_content
    if !text.nil? && !rewoof_id.nil?
      errors.add(:rewoof_id, "cannot exist if there is text")
      errors.add(:text, "cannot exist if it is a rewoof")
    end
  end
end
