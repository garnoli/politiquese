class Politizou < ActiveRecord::Base
  belongs_to :politizacao
  belongs_to :user
end
