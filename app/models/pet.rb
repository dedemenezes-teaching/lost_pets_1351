class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'lizard', 'rabbit']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    # Date.today - self.found_on
   (Date.today - found_on).to_i
  end
end
