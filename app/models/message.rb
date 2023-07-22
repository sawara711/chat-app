class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #MessagesテーブルとActive Storageのテーブルで管理された画像ファイルの紐づけ
  has_one_attached :image

  validates :content, presence: true
end