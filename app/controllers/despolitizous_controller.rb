class DespolitizousController < ApplicationController
    def index
    @despolitizous = Despolitizou.all
    end

    def create
    @politizacao = Politizacao.find(params[:politizacao_id])
    @despolitizou = @politizacao.despolitizous.create(params[:despolitizou].permit(:body))


    if not current_user.id.eql? @politizacao.user.id
      @user=current_user
      @user.pontos+=1
      @user.save!
    end
    @despolitizou.user_id = current_user.id
     @despolitizou.save!
    redirect_to politizacao_path(@politizacao)
  end



  def destroy
    @politizacao = Politizacao.find(params[:politizacao_id])
    @despolitizou = @politizacao.despolitizous.find(params[:id])
    @despolitizou.destroy
    redirect_to politizacao_path(@politizacao)
  end


  end
