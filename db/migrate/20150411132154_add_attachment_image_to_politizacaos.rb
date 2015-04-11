class AddAttachmentImageToPolitizacaos < ActiveRecord::Migration
  def self.up
    change_table :politizacaos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :politizacaos, :image
  end
end
