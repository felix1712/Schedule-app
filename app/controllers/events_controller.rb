class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
       redirect_to root_path
    else
       @errors = @event.errors.full_messages.to_sentence
       render 'new'
    end
  end

  def show
     @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = 'Data Dihapus'
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:summary, :start_at, :end_at, :location, :title)
  end

end
