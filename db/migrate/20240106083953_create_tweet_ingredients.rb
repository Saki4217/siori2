class CreateTweetIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :tweet_ingredients do |t|
      t.references :tweet, null: false, foreign_key: true
      t.string :title
      t.text :detail
      t.string :image
      t.string :movie
      t.text :address
      t.datetime :date_time
      t.time :need_time
      t.text :transportation

      t.timestamps
    end
  end
end
