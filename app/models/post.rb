class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  #el inclusion se utiliza en lugar del presence pero para los booleans
  validates :published, inclusion: {in: [true, false]}
  validates :user_id, presence: true
end