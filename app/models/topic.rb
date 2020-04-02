class Topic < ApplicationRecord
  belongs_to :category
  has_many :article
end
