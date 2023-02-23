class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save

    if @list.save
      redirect_to list_path(@list)
    else
      render 'new', status: :unprocessable_entity
    end

  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end



#As a user, I can see all my movie lists
#As a user, I can create a movie list
#As a user, I can bookmark a movie inside a movie list
#As a user, I can destroy a bookmark
#As a user, I can see the details of a movie list
