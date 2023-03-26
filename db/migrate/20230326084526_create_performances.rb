class CreatePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :performances do |t|
      t.string :title
      t.daterange :duration

      t.timestamps
    end
  end
end
