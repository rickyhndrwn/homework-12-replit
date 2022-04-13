class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, numericality: { only_float: true, message: 'must be numeric' }

  def self.by_letter(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end
