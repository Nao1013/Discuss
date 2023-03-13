class Post < ApplicationRecord
  
  # user_idとアソシエーション
  belongs_to :user
  
  # コメントとアソシエーション
  has_many :post_comments, dependent: :destroy
  
  # いいねとアソシエーション
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
  # バリデーション
   validates :title, presence: true, length: { minimum: 5 }
   validates :body, presence: true
  
end
