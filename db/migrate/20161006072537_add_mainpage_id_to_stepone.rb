class AddMainpageIdToStepone < ActiveRecord::Migration
  def change
    add_column :stepones, :mainpage_id, :integer
  end
end
