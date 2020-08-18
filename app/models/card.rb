class Card < ApplicationRecord
    has_many :comments, dependent: :destroy
end
