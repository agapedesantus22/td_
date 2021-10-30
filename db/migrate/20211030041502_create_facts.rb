class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :title
      t.text :post
      t.integer :user_id

      t.timestamps
    end
  end
end
