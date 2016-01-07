class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.string :date

      t.timestamps
    end
  end
end
