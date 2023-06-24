class Article < ApplicationRecord
    scope :top_3, -> { order(views: :desc).limit(3) }
end
