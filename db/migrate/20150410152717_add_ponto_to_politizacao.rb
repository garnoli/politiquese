class AddPontoToPolitizacao < ActiveRecord::Migration
  def change
    add_column :politizacaos, :ponto, :integer
    add_index :politizacaos, :ponto
  end
end
