class AccesoriosController < ApplicationController
  before_action :set_accesorio, only: [:show, :edit, :update, :destroy]

  # GET /accesorios
  # GET /accesorios.json
  def index
    @accesorios = Accesorio.all
  end

  # GET /accesorios/1
  # GET /accesorios/1.json
  def show
  end

  # GET /accesorios/new
  def new
    @accesorio = Accesorio.new
  end

  # GET /accesorios/1/edit
  def edit
  end

  # POST /accesorios
  # POST /accesorios.json
  def create
    @accesorio = Accesorio.new(accesorio_params)

    respond_to do |format|
      if @accesorio.save
        format.html { redirect_to @accesorio, notice: 'Accesorio was successfully created.' }
        format.json { render :show, status: :created, location: @accesorio }
      else
        format.html { render :new }
        format.json { render json: @accesorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accesorios/1
  # PATCH/PUT /accesorios/1.json
  def update
    respond_to do |format|
      if @accesorio.update(accesorio_params)
        format.html { redirect_to @accesorio, notice: 'Accesorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @accesorio }
      else
        format.html { render :edit }
        format.json { render json: @accesorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesorios/1
  # DELETE /accesorios/1.json
  def destroy
    @accesorio.destroy
    respond_to do |format|
      format.html { redirect_to accesorios_url, notice: 'Accesorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accesorio
      @accesorio = Accesorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accesorio_params
      params.require(:accesorio).permit(:name, :description, :picture, :cost, :availability)
    end
end
