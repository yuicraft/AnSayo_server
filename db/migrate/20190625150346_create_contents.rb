class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title, null: false , default: ""
      t.string :content, null: false, default: ""
      t.timestamps
    end
  end
end
