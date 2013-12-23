require 'spec_helper'

describe Entry do

  it { should validate_presence_of(:title).with_message("please enter a title") }
  it { should validate_presence_of(:description).with_message('please enter a description') }
end