class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :store_name
      t.string :rating
      t.string :comment
      t.references :employee
      t.references :user, null: false

      t.timestamps
    end
  end
end
