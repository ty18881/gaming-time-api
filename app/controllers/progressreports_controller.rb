class ProgressreportsController < ApplicationController
  before_action :set_progressreport, only: [:show, :update, :destroy]

  # GET /progressreports
  def index
    @progressreports = Progressreport.all

    render json: @progressreports
  end

  # GET /progressreports/1
  def show
    render json: @progressreport
  end

  # POST /progressreports
  def create
    @progressreport = Progressreport.new(progressreport_params)

    if @progressreport.save
      render json: @progressreport, status: :created, location: @progressreport
    else
      render json: @progressreport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /progressreports/1
  def update
    if @progressreport.update(progressreport_params)
      render json: @progressreport
    else
      render json: @progressreport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /progressreports/1
  def destroy
    @progressreport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progressreport
      @progressreport = Progressreport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def progressreport_params
      params.require(:progressreport).permit(:date, :time_earned, :user_id)
    end
end
