require 'byebug'

class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    sc
  end

  def edit
    sc
  end

  def update
    sc
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def sc
    @school_class = SchoolClass.find(params[:id])
  end

end
