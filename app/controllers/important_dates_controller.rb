class ImportantDatesController < ApplicationController
  before_action :set_important_date, only: [:show, :edit, :update, :destroy]

  # GET /important_dates
  # GET /important_dates.json
  def index
    @important_dates = ImportantDate.all
  end

  # GET /important_dates/1
  # GET /important_dates/1.json
  def show
  end

  # GET /important_dates/new
  def new
    @important_date = ImportantDate.new
  end

  # GET /important_dates/1/edit
  def edit
  end

  # POST /important_dates
  # POST /important_dates.json
  def create
    @important_date = ImportantDate.new(important_date_params)

    respond_to do |format|
      if @important_date.save
        format.html { redirect_to @important_date, notice: 'Important date was successfully created.' }
        format.json { render action: 'show', status: :created, location: @important_date }
      else
        format.html { render action: 'new' }
        format.json { render json: @important_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /important_dates/1
  # PATCH/PUT /important_dates/1.json
  def update
    respond_to do |format|
      if @important_date.update(important_date_params)
        format.html { redirect_to @important_date, notice: 'Important date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @important_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /important_dates/1
  # DELETE /important_dates/1.json
  def destroy
    @important_date.destroy
    respond_to do |format|
      format.html { redirect_to important_dates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_important_date
      @important_date = ImportantDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def important_date_params
      params.require(:important_date).permit(:day, :title, :description)
    end
end
