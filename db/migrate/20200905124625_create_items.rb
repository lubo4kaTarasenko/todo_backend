class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :token
      t.string :text
      t.boolean :check
      t.string :color
    end
  end
end
