class AddSteponeIdToSteptwo < ActiveRecord::Migration
  def change
    add_column :steptwos, :stepone_id, :integer
  end
end
