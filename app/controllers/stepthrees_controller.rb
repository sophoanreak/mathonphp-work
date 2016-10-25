class StepthreesController < ApplicationController
  before_action :set_stepthree, only: [:show, :edit, :update, :destroy]
  before_action :set_steptwo, except: [:destroy, :edit, :update, :show]

  # GET /stepthrees
  # GET /stepthrees.json
  def index
    @stepthrees = Stepthree.where(steptwo_id: @steptwo)
  end

  # GET /stepthrees/1
  # GET /stepthrees/1.json
  def show

  end

  # GET /stepthrees/new
  def new
    @stepthree = Stepthree.new
  end

  # GET /stepthrees/1/edit
  def edit
  end

  # POST /stepthrees
  # POST /stepthrees.json
  def create
    @stepthree = Stepthree.new(stepthree_params)
    @stepthree.steptwo_id = @steptwo.id

    respond_to do |format|
      if @stepthree.save
        format.html { redirect_to steptwo_stepthrees_path(@steptwo), notice: 'Stepthree was successfully created.' }
        format.json { render :show, status: :created, location: @stepthree }
      else
        format.html { render :new }
        format.json { render json: @stepthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stepthrees/1
  # PATCH/PUT /stepthrees/1.json
  def update
    respond_to do |format|
      if @stepthree.update(stepthree_params)
        format.html { redirect_to steptwo_stepthrees_path(@stepthree.steptwo), notice: 'Stepthree was successfully updated.' }
        format.json { render :show, status: :ok, location: @stepthree }
      else
        format.html { render :edit }
        format.json { render json: @stepthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stepthrees/1
  # DELETE /stepthrees/1.json
  def destroy
    @stepthree.destroy
    respond_to do |format|
      format.html { redirect_to steptwo_stepthrees_path(@stepthree.steptwo), notice: 'Stepthree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stepthree
      @stepthree = Stepthree.find(params[:id])
    end

    def set_steptwo
      @steptwo = Steptwo.find(params[:steptwo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stepthree_params
      params.require(:stepthree).permit(:title, :definition, :example, :code)
    end
end
