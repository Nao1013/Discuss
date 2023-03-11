class Post < ApplicationRecord
  
  # user_idとアソシエーション
  belongs_to :user
  
end
