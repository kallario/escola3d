class DonsController < ApplicationController
  before_action :set_dom, only: [:show, :edit, :update, :destroy]

  # GET /dons
  # GET /dons.json
  def index
    @dons = Dom.all
  end

  # GET /dons/1
  # GET /dons/1.json
  def show
  end

  # GET /dons/new
  def new
    @dom = Dom.new
  end

  # GET /dons/1/edit
  def edit
  end

  # POST /dons
  # POST /dons.json
  def create
    @dom = Dom.new(dom_params)

    respond_to do |format|
      if @dom.save
        format.html { redirect_to @dom, notice: 'Dom was successfully created.' }
        format.json { render :show, status: :created, location: @dom }
      else
        format.html { render :new }
        format.json { render json: @dom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dons/1
  # PATCH/PUT /dons/1.json
  def update
    respond_to do |format|
      if @dom.update(dom_params)
        format.html { redirect_to @dom, notice: 'Dom was successfully updated.' }
        format.json { render :show, status: :ok, location: @dom }
      else
        format.html { render :edit }
        format.json { render json: @dom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dons/1
  # DELETE /dons/1.json
  def destroy
    @dom.destroy
    respond_to do |format|
      format.html { redirect_to dons_url, notice: 'Dom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dom
      @dom = Dom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dom_params
      params.require(:dom).permit(:nome_dom)
    end
end
