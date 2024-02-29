class Transportation < ActiveRecord::Migration[6.1]
  def change
    change_column :tweet_ingredients, :need_time, :text
  end
end
