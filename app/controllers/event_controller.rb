class EventController < ApplicationController
  def index
    @evnets = current_user.participated_groups
  end

  def show
    @event = Event.find(params[:id])
    @dishes = Dish.where(event_id: @event.id)    
    @prepared_ingredients = current_user.prepared_ingredients
  end

  def create
    @event = Event.create(event_params)
    redirect_to @event
  end

  private

  def event_params
    params.require(:event).permit(:hold_place, :hold_time, :add_dish_deadline, :admin_id)
  end
end
