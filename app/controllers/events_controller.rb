class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if
      @event.save
      redirect_to root_path
      else
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

  before_filter :check_for_cancel, :only => [:create, :update]

def check_for_cancel
    if(params.key?("cancel"))
        flash[:notice] = "Registration is cancelled. "
        redirect_to root_path
    end
end

  private

  def event_params

    params.require(:event).permit(:summary, :start_at, :end_at, :location)
  end

end
