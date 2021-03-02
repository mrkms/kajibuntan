class WorksController < ApplicationController
 def new
    @work = Work.new
end
def create
    redirect_to("/works/index")
  end
end
