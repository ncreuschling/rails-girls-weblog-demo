class Post < ActiveRecord::Base
  # attributes
  attr_accessible :body, :title

  # associations
  has_many :comments

  # validations
  validates :title, presence: true, uniqueness: true, length: { within: 2..100 }
  validates :body, length: { minimum: 10 }

  # scopes
  default_scope order('created_at DESC')
end
