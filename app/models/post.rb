class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :content, length: {maximum: 500}
end
