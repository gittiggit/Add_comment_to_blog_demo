class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates :content, presence: true, length: {minimum: 2, maximum: 200}

end
