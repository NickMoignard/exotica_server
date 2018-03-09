class DropDancerTable < ActiveRecord::Migration[5.1]
    def change
      drop_table :dancers
    end
  end
  