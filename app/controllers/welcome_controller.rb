class WelcomeController < ApplicationController

    def index
    @politizacaos = Politizacao.all.order('created_at DESC').paginate(page: params[:page], per_page: 4)
    @politizous = Politizou.all

    @despolitizous = Despolitizou.all
    @user=User.order(pontos: :desc , email: :asc).limit(3)


    i=0
    maior=0
     Politizacao.all.each  do |politizada|
        total = politizada.despolitizous.count + politizada.politizous.count
        maior = total if i==0
        if i != 0
            if total > maior
                maior = total
                @maior_politizada = politizada
            end
        end
        i += 1
   end


    end


end
