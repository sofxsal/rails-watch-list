class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save!
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
   end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
