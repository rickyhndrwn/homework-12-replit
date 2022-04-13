class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validate :name_must_be_two_words_or_more
  validates :description, presence: true
  validates :price, numericality: { only_float: true, message: 'must be numeric' }
  validates :price, numericality: {
    only_float: true,
    greater_than_or_equal_to: 0.01,
    message: 'must be greater than or equal to 0.01'
  }

  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end

  private

  def name_must_be_two_words_or_more
    if name.to_s.squish.split.size == 1
      errors.add(:name, "can't be less than two words")
    end
  end
end
