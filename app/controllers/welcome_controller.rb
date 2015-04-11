class WelcomeController < ApplicationController

    def index
    @politizacaos = Politizacao.all.order('created_at DESC')
    @politizous = Politizou.all

    @despolitizous = Despolitizou.all

  end

end
