class CreatePolitizous < ActiveRecord::Migration
  def change
    create_table :politizous do |t|
      t.text :body
      t.references :politizacao, index: true

      t.timestamps null: false
    end
    add_foreign_key :politizous, :politizacaos
  end
end
