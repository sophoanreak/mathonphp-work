class SteptwosController < ApplicationController
  before_action :set_steptwo, only: [:show, :edit, :update, :destroy]
  before_action :set_stepone, except: [:destroy, :edit, :update, :show]


  # GET /steptwos
  # GET /steptwos.json
  def index
    @steptwos = Steptwo.where(stepone_id: @stepone)
  end
  # GET /steptwos/1
  # GET /steptwos/1.json
  def show

  end

  # GET /steptwos/new
  def new
    @steptwo = Steptwo.new
  end

  # GET /steptwos/1/edit
  def edit
  end

  # POST /steptwos
  # POST /steptwos.json
  def create
    @steptwo = Steptwo.new(steptwo_params)
    @steptwo.stepone_id = @stepone.id

    respond_to do |format|
      if @steptwo.save
        format.html { redirect_to stepone_steptwos_path(@stepone), notice: 'Steptwo was successfully created.' }
        format.json { render :show, status: :created, location: @steptwo }
      else
        format.html { render :new }
        format.json { render json: @steptwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steptwos/1
  # PATCH/PUT /steptwos/1.json
  def update
    respond_to do |format|
      if @steptwo.update(steptwo_params)
        format.html { redirect_to stepone_steptwos_path(@steptwo.stepone), notice: 'Steptwo was successfully updated.' }
        format.json { render :show, status: :ok, location: @steptwo }
      else
        format.html { render :edit }
        format.json { render json: @steptwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steptwos/1
  # DELETE /steptwos/1.json
  def destroy
    @steptwo.destroy
    respond_to do |format|
      format.html { redirect_to stepone_steptwos_path(@steptwo.stepone), notice: 'Steptwo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steptwo
      @steptwo = Steptwo.find(params[:id])
    end

    def set_stepone
      @stepone = Stepone.find(params[:stepone_id])
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def steptwo_params
      params.require(:steptwo).permit(:list)
    end
end
