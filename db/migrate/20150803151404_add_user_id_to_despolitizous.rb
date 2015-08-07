class AddUserIdToDespolitizous < ActiveRecord::Migration
  def change
    add_column :despolitizous, :user_id, :integer, references: :users
  end
end
