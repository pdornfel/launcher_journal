class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(event_params)
      redirect_to :entries
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    Entry.find(params[:id]).destroy
    redirect_to entries_path
  end

private
  def event_params
      params.require(:entry).permit(:title, :description, :category_id)
  end

end