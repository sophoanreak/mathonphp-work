class SteponesController < ApplicationController
  before_action :set_stepone, only: [:show, :edit, :update, :destroy]
  before_action :set_mainpage, except: [:destroy, :edit, :update, :show]

  # GET /stepones
  # GET /stepones.json
  def index
    @stepones = Stepone.all
  end

  # GET /stepones/1
  # GET /stepones/1.json
  def show
    @steptwos = Steptwo.where(stepone_id: @stepone.id)
    render_dummy
  end

  # GET /stepones/new
  def new
    @stepone = Stepone.new
  end

  # GET /stepones/1/edit
  def edit
    @steptwos = Steptwo.where(stepone_id: @stepone.id)
  end

  # POST /stepones
  # POST /stepones.json
  def create
    @stepone = Stepone.new(stepone_params)
    @stepone.mainpage_id = @mainpage.id

    respond_to do |format|
      if @stepone.save
        format.html { redirect_to mainpage_path(@mainpage), notice: 'Stepone was successfully created.' }
        format.json { render :show, status: :created, location: @stepone }
      else
        format.html { render :new }
        format.json { render json: @stepone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stepones/1
  # PATCH/PUT /stepones/1.json
  def update
    respond_to do |format|
      if @stepone.update(stepone_params)
        format.html { redirect_to mainpage_path(@stepone.mainpage), notice: 'Stepone was successfully updated.' }
        format.json { render :show, status: :ok, location: @stepone }
      else
        format.html { render :edit }
        format.json { render json: @stepone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stepones/1
  # DELETE /stepones/1.json
  def destroy
    @stepone.destroy
    respond_to do |format|
      format.html { redirect_to mainpage_path(@stepone.mainpage), notice: 'Stepone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stepone
      @stepone = Stepone.find(params[:id])
    end

    def set_mainpage
      @mainpage = Mainpage.find(params[:mainpage_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stepone_params
      params.require(:stepone).permit(:list)
    end
end
