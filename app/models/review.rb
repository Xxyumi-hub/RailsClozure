class Review < ApplicationRecord
  belongs_to :store
  validates :content, :name, presence: true
end
