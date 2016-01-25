class Article < ActiveRecord::Base
	belongs_to :user
  has_many :article_categories
	has_many :categories, through: :article_categories
	has_many :comments, dependent: :destroy

	validates :title, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

  scope :latest, ->{order created_at: :desc}

  def latest article
    article.comments.order(created_at: :desc)
  end

end	
