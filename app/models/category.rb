class Category < ApplicationRecord
  belongs_to :religion
  has_many :topics
end
