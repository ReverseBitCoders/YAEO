class EventsController < ApplicationController

  load_and_authorize_resource
  def index
    @events = Event.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @event = Event.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @event = Event.get(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    @event.user_id = current_user.id
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @event = Event.get(params[:id])

    respond_to do |format|
      if @event.update(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
