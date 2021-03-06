class Micropost < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  default_scope -> {order(created_at: :desc)}
  mount_uploader :picture, PictureUploader
  
  validates :user_id, presence: true
  validates :content,presence: true, length: {maximum: 140}
  validate  :picture_size

  def self.search(search)
    if search
      where(['content LIKE?', "%#{search}%"])
    else
      all
    end
  end
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  private

    #アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 2.megabytes
        errors.add(:picture, "should be less then 2MB")
      end
    end
end
