class Comment < ActiveRecord::Base
	belongs_to :post
	default_scope -> { order('created_at DESC') }
	validates :content, length: { maximum: 140 }
	validates :post_id, presence: true
end
