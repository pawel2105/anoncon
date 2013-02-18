class CreateApiTokens < ActiveRecord::Migration
  def change
    create_table :api_tokens do |t|
    	t.string :api_key
      t.timestamps
    end
  end
end
