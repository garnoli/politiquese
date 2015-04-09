class PolitizousController < ApplicationController


    def create
    @politizacao = Politizacao.find(params[:politizacao_id])
    # @politizacao.ponto = @politizacao.ponto += 1
    # @politizacao.save
    @politizou = @politizacao.politizous.create(params[:politizou].permit(:body))
    redirect_to politizacao_path(@politizacao)
  end


  def destroy
    @politizacao = Politizacao.find(params[:politizacao_id])
    @politizou = @politizacao.politizous.find(params[:id])
    @politizou.destroy
    redirect_to politizacao_path(@politizacao)
  end


end
