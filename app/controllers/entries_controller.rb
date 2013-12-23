class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(event_params)

    respond_to do |format|
      @entry.save
      format.html { redirect_to :entries }
    end
  end

  def event_params
      params.require(:entry).permit(:title, :description, :category_id)
  end

  def destroy
    Entry.find(params[:id]).destroy
    redirect_to entries_path
  end


end