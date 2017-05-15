class Idea < ApplicationRecord
  belongs_to :user
  has_many :supports, dependent: :destroy
  has_many :supporters, :through => :supports, :source => :user
  default_scope -> {order(created_at: :desc)}
  validates :content, presence: true
  validates :user_id, presence: true
end
