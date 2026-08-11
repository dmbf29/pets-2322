class Pet < ApplicationRecord
  # associations
  # validations
  SPECIES = [ "cat", "dog", "cow", "big cat", "snake" ]
  validates :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }
end

# Pet::SPECIES
