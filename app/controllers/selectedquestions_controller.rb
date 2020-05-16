class SelectedquestionsController < ApplicationController
  before_action :set_selectedquestion, only: [:show, :update, :destroy]

  # GET /selectedquestions
  def index
    @selectedquestions = Selectedquestion.all

    render json: @selectedquestions
  end

  # GET /selectedquestions/1
  def show
    render json: @selectedquestion
  end

  # POST /selectedquestions
  def create
    @selectedquestion = Selectedquestion.new(selectedquestion_params)

    if @selectedquestion.save
      render json: @selectedquestion, status: :created, location: @selectedquestion
    else
      render json: @selectedquestion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /selectedquestions/1
  def update
    if @selectedquestion.update(selectedquestion_params)
      render json: @selectedquestion
    else
      render json: @selectedquestion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /selectedquestions/1
  def destroy
    @selectedquestion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selectedquestion
      @selectedquestion = Selectedquestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selectedquestion_params
      params.require(:selectedquestion).permit(:answered, :answered_c, :answered_w)
    end
end
