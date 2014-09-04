class AccessionsController < ApplicationController
  before_action :set_accession, only: [:show, :edit, :update, :destroy]

  # GET /accessions
  # GET /accessions.json
  def index
    @accessions = Accession.all
  end

  # GET /accessions/1
  # GET /accessions/1.json
  def show
  end

  # GET /accessions/new
  def new
    @accession = Accession.new
  end

  # GET /accessions/1/edit
  def edit
  end

  # POST /accessions
  # POST /accessions.json
  def create
    @accession = Accession.new(accession_params)

    respond_to do |format|
      if @accession.save
        format.html { redirect_to @accession, notice: 'Accession was successfully created.' }
        format.json { render :show, status: :created, location: @accession }
      else
        format.html { render :new }
        format.json { render json: @accession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessions/1
  # PATCH/PUT /accessions/1.json
  def update
    respond_to do |format|
      if @accession.update(accession_params)
        format.html { redirect_to @accession, notice: 'Accession was successfully updated.' }
        format.json { render :show, status: :ok, location: @accession }
      else
        format.html { render :edit }
        format.json { render json: @accession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessions/1
  # DELETE /accessions/1.json
  def destroy
    @accession.destroy
    respond_to do |format|
      format.html { redirect_to accessions_url, notice: 'Accession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accession
      @accession = Accession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accession_params
      params.require(:accession).permit(:accession_number, :collection_date, :date_received)
    end
end
