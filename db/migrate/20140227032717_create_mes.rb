class CreateMes < ActiveRecord::Migration
  def change
    create_table :mes do |t|
      t.text :content

      t.timestamps
    end
  end
end
