class Politizacao < ActiveRecord::Base
  has_many :politizous
  has_many :despolitizous
  searchkick


  belongs_to :user #adicionado para fazer o relacionamento entre user e politizacaos
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
