class Politizacao < ActiveRecord::Base
	belongs_to :user #adicionado para fazer o relacionamento entre user e politizacaos
end
