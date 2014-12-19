class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating,
    presence: true,
    :inclusion => 1..5
  validates_presence_of :body
end
