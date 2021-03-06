class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :comment
      t.integer :score

      t.timestamps null: false
    end
  end
end
