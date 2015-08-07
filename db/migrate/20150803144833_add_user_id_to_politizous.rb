class AddUserIdToPolitizous < ActiveRecord::Migration
  def change
    add_column :politizous, :user_id, :integer, references: :users

  end
end
