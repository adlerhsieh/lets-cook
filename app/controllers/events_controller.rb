class EventsController < ApplicationController
  def index
    @events = current_user.participated_groups
    @new_event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @dishes = Dish.where(event_id: @event.id)    
    @prepared_ingredients = current_user.prepared_ingredients
  end

  def create
    @new_event = Event.new(event_params)
    @new_event[:admin_id] = 1
    if @new_event.save
      redirect_to event_path(@event[:id])
    else
      flash[:notice] = "欄位不可有空白！"
      render :index
    end
  end

  private

  def event_params
    params.require(:event).permit(:hold_place, :hold_time, :add_dish_deadline, :admin_id)
  end
end
