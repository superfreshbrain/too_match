class Like < ApplicationRecord
  belongs_to :post, counter_cache: :likes_count # counter_cache is for total like count(linked with likes_count column)
  belongs_to :user
end
