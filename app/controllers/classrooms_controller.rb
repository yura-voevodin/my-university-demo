class ClassroomsController < ApplicationController
  before_action :find_model

  # GET /classrooms
  def index
    per_page = 6
    @query = params["query"]

    if @query.present?
      @classrooms = Classroom.where("lowercase_name LIKE ?", "%#{@query.downcase}%")
      .paginate(page: params[:page], per_page: per_page)
    else
      @classrooms = Classroom.paginate(page: params[:page], per_page: per_page)
    end
  end

  private
  def find_model
    @model = Classroom.find(params[:id]) if params[:id]
  end
end