class ChangeDataStartDayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :start_day, :date
  end
end
