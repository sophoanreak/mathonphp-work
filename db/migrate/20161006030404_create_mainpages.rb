class CreateMainpages < ActiveRecord::Migration
  def change
    create_table :mainpages do |t|
      t.string :mathlist

      t.timestamps null: false
    end
  end
end
