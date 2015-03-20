class AddUserIdToPolitizacaos < ActiveRecord::Migration
  def change
    add_column :politizacaos, :user_id, :integer
  end
end
