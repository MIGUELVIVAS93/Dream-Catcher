class GirosController < ApplicationController
  before_action :set_giro, only: [:show, :edit, :update, :destroy]

  # GET /giros
  # GET /giros.json
  def index
    @giros = Giro.all
  end

  # GET /giros/1
  # GET /giros/1.json
  def show
  end

  # GET /giros/new
  def new
    @giro = Giro.new
  end

  # GET /giros/1/edit
  def edit
  end

  # POST /giros
  # POST /giros.json
  def create
    @giro = Giro.new(giro_params)

    respond_to do |format|
      if @giro.save
        format.html { redirect_to @giro, notice: 'Giro was successfully created.' }
        format.json { render :show, status: :created, location: @giro }
      else
        format.html { render :new }
        format.json { render json: @giro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giros/1
  # PATCH/PUT /giros/1.json
  def update
    respond_to do |format|
      if @giro.update(giro_params)
        format.html { redirect_to @giro, notice: 'Giro was successfully updated.' }
        format.json { render :show, status: :ok, location: @giro }
      else
        format.html { render :edit }
        format.json { render json: @giro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giros/1
  # DELETE /giros/1.json
  def destroy
    @giro.destroy
    respond_to do |format|
      format.html { redirect_to giros_url, notice: 'Giro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giro
      @giro = Giro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def giro_params
      params.require(:giro).permit(:numTarjeta, :fecha, :valor, :pasarela, :datos, :references)
    end
end
