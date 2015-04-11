class PolitizacaosController < ApplicationController
  before_action :set_politizacao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show] #adicionado para criar id do user

  public
  def search
    if params[:search].present?
      @politizacaos = Politizacao.search(params[:search])
    else
      @politizacaos = Politizacao.all
    end
  end

  # GET /politizacaos
  # GET /politizacaos.json
  def index
    @politizacaos = Politizacao.all.order('created_at DESC').paginate(page: params[:page], per_page: 5)
    @politizous = Politizou.all

    @despolitizous = Despolitizou.all



  end

  # GET /politizacaos/1
  # GET /politizacaos/1.json
  def show

  end

  # GET /politizacaos/new
  def new
    @politizacao = current_user.politizacaos.build
    #adicionado current para criar id do user
  end

  # GET /politizacaos/1/edit
  def edit
  end

  # POST /politizacaos
  # POST /politizacaos.json
  def create
    @politizacao = current_user.politizacaos.build(politizacao_params)  #adicionado current para criar id do user

    # @politizacao.ponto = pontuacao(@politizacao)

    respond_to do |format|
      if @politizacao.save
        format.html { redirect_to @politizacao, notice: 'Politizacao was successfully created.' }
        format.json { render :show, status: :created, location: @politizacao }
      else
        format.html { render :new }
        format.json { render json: @politizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politizacaos/1
  # PATCH/PUT /politizacaos/1.json
  def update
    respond_to do |format|
      if @politizacao.update(politizacao_params)
        format.html { redirect_to @politizacao, notice: 'Politizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @politizacao }
      else
        format.html { render :edit }
        format.json { render json: @politizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politizacaos/1
  # DELETE /politizacaos/1.json
  def destroy
    @politizacao.destroy
    respond_to do |format|
      format.html { redirect_to politizacaos_url, notice: 'Politizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politizacao
      @politizacao = Politizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def politizacao_params
      params.require(:politizacao).permit(:title, :body)
    end

    # def pontuacao(objeto)
    # objeto.ponto= 2
    # end
end
