class CreateAccounts < ActiveRecord::Migration
 def change
     create_table :accounts do |t|
       t.belongs_to :user
       t.belongs_to :agency
       t.timestamps
     end
   end
end
