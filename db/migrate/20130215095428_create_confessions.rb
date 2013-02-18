class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t|

      t.timestamps
    end
  end
end
