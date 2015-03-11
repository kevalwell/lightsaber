class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :store_name
      t.string :comment
      t.string :rating
      t.references :employee
      t.references :user

      t.timestamps
    end
  end
end
