class WelcomeController < ApplicationController

    def index
    @politizacaos = Politizacao.all.order('created_at DESC').paginate(page: params[:page], per_page: 5)
    @politizous = Politizou.all

    @despolitizous = Despolitizou.all

  end

end
