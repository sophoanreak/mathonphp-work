class CreateStepones < ActiveRecord::Migration
  def change
    create_table :stepones do |t|
      t.string :list

      t.timestamps null: false
    end
  end
end
