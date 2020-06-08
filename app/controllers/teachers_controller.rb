class TeachersController < ApplicationController
  before_action :find_model

  # GET /teachers
  def index
    per_page = 6
    @query = params["query"]
    if @query.present?
      @teachers = Teacher.where("lowercase_name LIKE ?", "%#{@query.downcase}%")
      .paginate(page: params[:page], per_page: per_page)
    else
      @teachers = Teacher.paginate(page: params[:page], per_page: per_page)
    end
  end

  private
  def find_model
    @model = Teacher.find(params[:id]) if params[:id]
  end
end