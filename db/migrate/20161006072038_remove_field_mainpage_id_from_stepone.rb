class RemoveFieldMainpageIdFromStepone < ActiveRecord::Migration
  def change
    remove_column :stepones, :mainpage_id, :string
  end
end
