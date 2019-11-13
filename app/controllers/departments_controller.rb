class DepartmentsController < ApplicationController
    before_action :set_department, only: [:show, :update, :edit, :destroy]
    #Filters are methods that are run "before", "after" or "around" a controller 
    #action. This code will run set_department on each method in this class unless 
    #otherwise specified (only or except)

  def index
    #GET - /departments
    @departments = Department.all
    #variable gets all data in Department DB and renders departments/index.html
  end

  def show
  end

  def new
    #GET - /departments/new
    @department = Department.new
    #variable gets what????
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    #POST /departments
    @department = Department.new(department_params)
    #
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def update
    if @department.update(department_params)
      redirect_to @department
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private
    
    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end

end
