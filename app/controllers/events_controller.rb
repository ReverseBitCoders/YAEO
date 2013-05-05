class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  load_and_authorize_resource
  def index
    @events = Event.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.get(params[:id])
  end

  # POST /events
  # POST /events.json
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

  # PUT /events/1
  # PUT /events/1.json
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

  # # DELETE /events/1
  # # DELETE /events/1.json
  # def destroy
  #   @event = Event.get(params[:id])
  #   @event.destroy

  #   respond_to do |format|
  #     format.html { redirect_to events_url }
  #     format.json { head :no_content }
  #   end
  # end
end
