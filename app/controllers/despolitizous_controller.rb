class DespolitizousController < ApplicationController
    def index
    @despolitizous = Despolitizou.all
    end

    def create
    @politizacao = Politizacao.find(params[:politizacao_id])
    @despolitizou = @politizacao.despolitizous.create(params[:despolitizou].permit(:body))
    redirect_to politizacao_path(@politizacao)
  end



  def destroy
    @politizacao = Politizacao.find(params[:politizacao_id])
    @politizou = @politizacao.despolitizous.find(params[:id])
    @despolitizou.destroy
    redirect_to politizacao_path(@politizacao)
  end


  end
