class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :content, length: {maximum: 500}
  validate :end_day_time

  private

  def end_day_time
    return false if end_day.blank? || start_day.blank?
    if start_day > end_day
      errors.add(:end_day, "は開始日より後の日付を選択してください")
    end
  end
end
