class CommentsController < ApplicationController
  def index
    @events = Event.all
  end
end
