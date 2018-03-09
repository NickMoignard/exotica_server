class CreateDancers < ActiveRecord::Migration[5.1]
  def change
    create_table :dancers do |t|
      t.string :name
      t.boolean :present
    end
  end
end
