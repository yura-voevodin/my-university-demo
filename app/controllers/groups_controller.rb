class GroupsController < ApplicationController
  before_action :find_model

  # GET /groups
  def index
    per_page = 6
    @query = params["query"]
    if @query.present?
      @groups = Group.where("lowercase_name LIKE ?", "%#{@query.downcase}%")
      .paginate(page: params[:page], per_page: per_page)
    else
      @groups = Group.paginate(page: params[:page], per_page: per_page)
    end
  end

  # GET /groups/1
  def show
    # Date
    @date = pair_date_from(params)
    @next_date = @date + 1.day
    @previous_date = @date - 1.day

    @records = Record.joins(:groups)
    .where('groups.id': @model.id)
    .where(start_date: @date.all_day)
    .order(:start_date)
  end

  private
  def find_model
    @model = Group.friendly.find(params[:id]) if params[:id]
  end
end