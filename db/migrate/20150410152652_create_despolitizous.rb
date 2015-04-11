class CreateDespolitizous < ActiveRecord::Migration
  def change
    create_table :despolitizous do |t|
      t.text :body
      t.references :politizacao, index: true

      t.timestamps null: false
    end
    add_foreign_key :despolitizous, :politizacaos
  end
end
