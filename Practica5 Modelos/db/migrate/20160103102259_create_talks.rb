class CreateTalks < ActiveRecord::Migration
  def change
      create_table :talk do |t|
          t.integer :idTalk
          t.text :name
          t.text :description
          t.text :date

          t.timestamps
      end
  end
end
