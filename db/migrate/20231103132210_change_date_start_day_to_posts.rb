class ChangeDateStartDayToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :start_day, :datetime
  end
end
