class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :plug
      t.string :title
      t.text :text
      t.integer :parent_id
      t.boolean :main, :default => false
      t.integer :weight

      t.timestamps
    end
  end
end
