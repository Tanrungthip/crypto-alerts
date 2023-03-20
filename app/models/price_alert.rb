class PriceAlert < ApplicationRecord
  belongs_to :user
  validates :cryptocurrency, presence: true
  validates :price, presence: true
end
