class Comment < ActiveRecord::Base
  # attributes
  attr_accessible :author_name, :body, :post_id

  # associations
  belongs_to :post

  # validations
  validates :author_name, presence: true, length: { maximum: 100 }
  validates :body, length: { within: 10..1000 }
  validates :post, associated: true
  validates :post_id, presence: true 

  # scopes
  default_scope order('created_at ASC')
end
