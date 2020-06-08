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

  private
  def find_model
    @model = Group.find(params[:id]) if params[:id]
  end
end