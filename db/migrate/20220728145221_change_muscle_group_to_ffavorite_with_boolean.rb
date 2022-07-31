class ChangeMuscleGroupToFfavoriteWithBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :exercises, :muscle_group, :boolean
    rename_column :exercises, :muscle_group, :favorite
  end
end
