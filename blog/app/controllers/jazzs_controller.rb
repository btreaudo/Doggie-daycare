class JazzsController < ApplicationController
  before_action :set_jazz, only: [:show, :edit, :update, :destroy]

  # GET /jazzs
  # GET /jazzs.json
  def index
    @jazzs = Jazz.all
  end

  # GET /jazzs/1
  # GET /jazzs/1.json
  def show
  end

  # GET /jazzs/new
  def new
    @jazz = Jazz.new
  end

  # GET /jazzs/1/edit
  def edit
  end

  # POST /jazzs
  # POST /jazzs.json
  def create
    @jazz = Jazz.new(jazz_params)

    respond_to do |format|
      if @jazz.save
        format.html { redirect_to @jazz, notice: 'Jazz was successfully created.' }
        format.json { render :show, status: :created, location: @jazz }
      else
        format.html { render :new }
        format.json { render json: @jazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jazzs/1
  # PATCH/PUT /jazzs/1.json
  def update
    respond_to do |format|
      if @jazz.update(jazz_params)
        format.html { redirect_to @jazz, notice: 'Jazz was successfully updated.' }
        format.json { render :show, status: :ok, location: @jazz }
      else
        format.html { render :edit }
        format.json { render json: @jazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jazzs/1
  # DELETE /jazzs/1.json
  def destroy
    @jazz.destroy
    respond_to do |format|
      format.html { redirect_to jazzs_url, notice: 'Jazz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jazz
      @jazz = Jazz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jazz_params
      params.require(:jazz).permit(:content, :title)
    end
end
