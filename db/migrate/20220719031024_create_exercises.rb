class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :url
      t.text :instructions
    end
  end
end
