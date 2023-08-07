class EventsController < ApplicationController
  def index
    @event = Event.all.order(created_at: :desc)
  end

  def new
    @event = Event.new
  end

  def create
    # @event = current_user.events.build(event_params)
    @event = Event.new(event_params)
    if @event.save!
      redirect_to root_path, notice: "投稿が成功しました。"
    else
      flash.now[:alert] = "投稿ができませんでした。すまん"
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :tag , :body)
  end
end
