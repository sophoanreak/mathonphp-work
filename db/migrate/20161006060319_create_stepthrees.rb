class CreateStepthrees < ActiveRecord::Migration
  def change
    create_table :stepthrees do |t|
      t.string :title
      t.string :definition
      t.string :example
      t.string :code

      t.timestamps null: false
    end
  end
end
