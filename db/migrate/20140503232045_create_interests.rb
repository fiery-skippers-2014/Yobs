class CreateInterests < ActiveRecord::Migration
 def change
     create_table :interests do |t|
       t.belongs_to :job
       t.belongs_to :user
       t.timestamps
     end
   end
end
