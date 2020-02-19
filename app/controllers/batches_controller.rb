class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  # GET /batches
  def index
    @batches = Batch.all
  end

  # GET /batches/1
  def show
    @student = Student.new
  end

  # GET /batches/new
  def new
    @batch = Batch.new
  end

  # GET /batches/1/edit
  def edit
  end

  # POST /batches
  def create
    @batch = Batch.new(batch_params)

    if @batch.save
      redirect_to @batch, notice: 'Batch was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /batches/1
  def update
    if @batch.update(batch_params)
      redirect_to @batch, notice: 'Batch was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /batches/1
  def destroy
    @batch.destroy
    redirect_to batches_url, notice: 'Batch was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch
      @batch = Batch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def batch_params
      params.require(:batch).permit(:name, :banner_url)
    end
end
