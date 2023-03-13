class PostComment < ApplicationRecord
  
  # 投稿機能とユーザー機能とのアソシエーション
  belongs_to :user
  belongs_to :post
  
end
