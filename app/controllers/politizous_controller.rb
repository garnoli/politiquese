class PolitizousController < ApplicationController
  def index
    @politizous = Politizou.all
  end

    def create
    @politizacao = Politizacao.find(params[:politizacao_id])

    # @politizacao.ponto = @politizacao.ponto += 1
    # @politizacao.save

    @post_vizinho = @politizacao.user
    if not current_user.id.eql? @politizacao.user.id
      @user=current_user
      @user.pontos+=1
      @user.save!

      @post_vizinho.pontos += 2
      @post_vizinho.save!
    end

    @politizou = @politizacao.politizous.create(params[:politizou].permit(:body))
     @politizou.user_id = current_user.id
     @politizou.save!
    redirect_to politizacao_path(@politizacao)
  end


  def destroy
    @politizacao = Politizacao.find(params[:politizacao_id])
    @politizou = @politizacao.politizous.find(params[:id])
    @politizou.destroy
    redirect_to politizacao_path(@politizacao)
  end


end
