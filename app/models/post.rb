class Post < ApplicationRecord
  
  # user_idとアソシエーション
  belongs_to :user
  
  # コメントとアソシエーション
  has_many :post_comments, dependent: :destroy
  
  # バリデーション
   validates :title, presence: true, length: { minimum: 5 }
   validates :body, presence: true
  
end
