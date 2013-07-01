class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer :weight

      t.timestamps
    end
  end
end
