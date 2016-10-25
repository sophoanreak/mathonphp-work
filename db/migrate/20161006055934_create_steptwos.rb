class CreateSteptwos < ActiveRecord::Migration
  def change
    create_table :steptwos do |t|
      t.string :list

      t.timestamps null: false
    end
  end
end
