class User < ApplicationRecord
  has_many :ideas, dependent: :destroy
  has_many :supports, dependent: :destroy
  has_many :supported_ideas, :through => :supports, :source => :idea
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 4 }
  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def support(idea)
    supported_ideas << idea
  end

  def unsupport(idea)
    supported_ideas.delete(idea)
  end

  def supports?(idea)
    supported_ideas.include?(idea)
  end

  def feed
    Idea.where("user_id = ?", id)
  end

end
