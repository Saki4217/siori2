class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.text :detail
      t.string :image
      t.text :address
      t.datetime :date_time
      t.time :need_time
      t.text :transportation

      t.timestamps
    end
  end
end
