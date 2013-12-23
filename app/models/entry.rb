class Entry < ActiveRecord::Base

  belongs_to :category

  validates_presence_of :title, message: 'please enter a title'
  validates_presence_of :description, message: 'please enter a description'

end


