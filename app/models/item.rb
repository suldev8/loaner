class Item < ApplicationRecord
    belongs_to :user
    has_many :loans, dependent: :destroy
    has_one_attached :image
end
