class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #MessagesテーブルとActive Storageのテーブルで管理された画像ファイルの紐づけ
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  #画像の有無によって、バリデーションを行うか条件分岐
  def was_attached?
    self.image.attached?
  end
end