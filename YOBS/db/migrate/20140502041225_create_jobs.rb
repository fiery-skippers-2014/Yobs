class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :agency
      t.belongs_to :category
      t.string :heading
      t.text :description
      t.string :location
      t.string :date
      t.timestamps
    end
  end
end
