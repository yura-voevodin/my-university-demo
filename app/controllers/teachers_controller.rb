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

  # GET /teachers/1
  def show
    # Date
    @date = pair_date_from(params)
    @next_date = @date + 1.day
    @previous_date = @date - 1.day

    @records = Record.where(teacher: @model)
    .where(start_date: @date.all_day)
    .order(:start_date)
  end

  private
  def find_model
    @model = Teacher.friendly.find(params[:id]) if params[:id]
  end
end