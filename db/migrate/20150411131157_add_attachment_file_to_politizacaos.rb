class AddAttachmentFileToPolitizacaos < ActiveRecord::Migration
  def self.up
    change_table :politizacaos do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :politizacaos, :file
  end
end
