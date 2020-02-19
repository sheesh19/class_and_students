class StudentsController < ApplicationController

  def create
    @student = Student.new(student_params)
    @batch = Batch.find(params[:batch_id])

    @student.batch = @batch

    if @student.save
      redirect_to batch_path(@student.batch)
    else
      render 'batches/show'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to batches_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :image_url)
  end
end
