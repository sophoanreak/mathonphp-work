class RemoveFieldSteponeIdFromSteptwo < ActiveRecord::Migration
  def change
    remove_column :steptwos, :stepone_id, :string
  end
end
