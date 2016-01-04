class Review < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  validates :review, presence: true, length: {minimum: 20, maximum: 500}

  validates_uniqueness_of :chef, scope: :recipe

end
