class AddBodyToConfession < ActiveRecord::Migration
  def change
    change_table :confessions do |t|
      t.text :body
    end
  end
end
