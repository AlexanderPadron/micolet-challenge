class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :women
      t.boolean :men
      t.boolean :children
      t.timestamps
    end
  end
end
