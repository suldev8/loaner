class Item < ApplicationRecord
    belongs_to :user
	has_many :loans, dependent: :destroy
end
