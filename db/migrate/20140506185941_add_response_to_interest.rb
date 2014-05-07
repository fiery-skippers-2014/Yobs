class AddResponseToInterest < ActiveRecord::Migration
  def change
    add_column :interests, :response, :boolean, default: false
  end
end
