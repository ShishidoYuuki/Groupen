class EventsController < ApplicationController
  def index
    @event = Event.all.order(created_at: :desc)
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params.[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: "投稿が成功しました。"
    else
      flash.now[:alert] = "投稿ができませんでした。すまん"
      render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path, notice: "投稿を更新しました"
    end
    render :new
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path, notice: "投稿を削除しました"
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :tag , :body)
  end
end
