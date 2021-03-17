class WorksController < ApplicationController
  def index
    @works = Work.all
    @work = Work.find_by(id: params[:id])
  end
  
  def show
  end
  
  def new
    @work = Work.new
  end
 
  def create
    @work = Work.new(work_params)
   if @work.save
      redirect_to '/works'
   end
  end
  
  
  def edit
    @work = Work.find(params[:id])
  end
  
  def update
    @work = Work.find(params[:id])
   if @work.update(work_params)
      redirect_to '/works'
   end
  end
  
  def destroy
  end
  
  private
  def work_params
     params.require(:work).permit(:name, :point)
  end
end
