class AddSteptwoIdToStepthree < ActiveRecord::Migration
  def change
    add_column :stepthrees, :steptwo_id, :integer
  end
end
