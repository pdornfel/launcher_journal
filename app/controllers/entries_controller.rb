class EntriesController < ActionController::Base

  def index
    @entries = Entry.all
  end

end