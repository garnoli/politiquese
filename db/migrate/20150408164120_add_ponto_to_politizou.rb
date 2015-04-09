class AddPontoToPolitizou < ActiveRecord::Migration
  def change
    add_column :politizous, :ponto, :integer
    add_index :politizous, :ponto
  end
end
