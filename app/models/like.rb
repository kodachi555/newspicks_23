class Like < ApplicationRecord
  belongs_to :pick, counter_cache: :likes_count
  belongs_to :user
end
