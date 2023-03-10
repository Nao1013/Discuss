class Post < ApplicationRecord
  
  # user_idとアソシエーション
  belongs_to :user
  
  has_many_attached :image
  
end
