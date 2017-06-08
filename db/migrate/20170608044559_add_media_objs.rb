class AddMediaObjs < ActiveRecord::Migration[5.1]
  def change
    add_column :media, :content, :string
    add_column :media, :source, :string
    add_column :media, :time, :string
  end
end
