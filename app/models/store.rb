class Store < ApplicationRecord
    has_many :reviews
    validates :name, :address, presence: true
end
