class CreateClassifiers < ActiveRecord::Migration
  def change
    create_table :classifiers do |t|
      t.float :x1
      t.float :x2
      t.float :x3
      t.float :x4
      t.float :x5
      t.float :x6

      t.timestamps
    end
  end
end
