class WorksController < ApplicationController
  def index
  @works = Work.all
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
  
  private
  def work_params
     params.require(:work).permit(:name, :point)
  end
  
  def edit
  end
  
  def destroy
  end
  
end
