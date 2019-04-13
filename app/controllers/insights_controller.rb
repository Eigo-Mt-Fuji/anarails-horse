class InsightsController < ApplicationController
  before_action :set_insight, only: [:show, :edit, :update, :destroy]

  # GET /insights
  # GET /insights.json
  def index
    @insights = Insight.all
  end

  # GET /insights/1
  # GET /insights/1.json
  def show
  end

  # GET /insights/new
  def new
    @insight = Insight.new
  end

  # GET /insights/1/edit
  def edit
  end

  # POST /insights
  # POST /insights.json
  def create
    @insight = Insight.new(insight_params)

    respond_to do |format|
      if @insight.save
        format.html { redirect_to @insight, notice: 'Insight was successfully created.' }
        format.json { render :show, status: :created, location: @insight }
      else
        format.html { render :new }
        format.json { render json: @insight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insights/1
  # PATCH/PUT /insights/1.json
  def update
    respond_to do |format|
      if @insight.update(insight_params)
        format.html { redirect_to @insight, notice: 'Insight was successfully updated.' }
        format.json { render :show, status: :ok, location: @insight }
      else
        format.html { render :edit }
        format.json { render json: @insight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insights/1
  # DELETE /insights/1.json
  def destroy
    @insight.destroy
    respond_to do |format|
      format.html { redirect_to insights_url, notice: 'Insight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insight
      @insight = Insight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insight_params
      params.require(:insight).permit(:year, :month, :day, :location, :race_name, :course_status, :distance, :candidacy, :post_time, :a1, :a2, :a3, :horse_name, :horse_gender, :horse_age, :jockey, :weight_carry, :order_finish, :order_difference, :popular, :odds, :time, :a4, :a5, :a6, :position, :up_time, :a7, :trainer, :traing_center, :a8, :owner, :farm, :sire, :broodmare_sire)
    end
end
