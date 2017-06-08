class CreateSentiments < ActiveRecord::Migration[5.1]
  def change
    create_table :sentiments do |t|

      t.timestamps
    end
  end
end
