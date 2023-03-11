class Post < ApplicationRecord
  
  # user_idとアソシエーション
  belongs_to :user
  
  # バリデーション
   validates :title, presence: true, length: { minimum: 5 }
   validates :body, presence: true
  
end
