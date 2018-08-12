class SchoolClassesController < ApplicationController
  
  def show
    @sc = SchoolClass.find(params[:id])
  end

  def new
    @sc = SchoolClass.new
  end

  def create
    @sc = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(@sc)
  end

  def edit
    @sc = SchoolClass.find(params[:id])
  end

  def update
    @sc = SchoolClass.find(params[:id])
    @sc.update(params.require(:school_class))
    redirect_to school_class_path(@sc)
  end

end
