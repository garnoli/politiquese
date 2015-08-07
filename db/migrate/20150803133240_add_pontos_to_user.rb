class AddPontosToUser < ActiveRecord::Migration
  def change
    add_column :users, :pontos, :integer, :default => 0
  end
end
