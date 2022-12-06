class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :book-id
      t.integer :user-id

      t.timestamps
    end
  end
end
