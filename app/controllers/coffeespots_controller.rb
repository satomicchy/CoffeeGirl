class CoffeespotsController < ApplicationController
  before_filter :authenticate_member!, :except => [:index]

  # GET /coffeespots
  # GET /coffeespots.json
  def index
    @coffeespots = Coffeespot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coffeespots }
    end
  end

  def show
    @coffeespot = Coffeespot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coffeespot }
    end
  end

  # GET /coffeespots/new
  # GET /coffeespots/new.json
  def new
    @coffeespot = Coffeespot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coffeespot }
    end
  end

  # GET /coffeespots/1/edit
  def edit
    @coffeespot = Coffeespot.find(params[:id])
  end

  # POST /coffeespots
  # POST /coffeespots.json
  def create
    @coffeespot = Coffeespot.new(params[:coffeespot])

    respond_to do |format|
      if @coffeespot.save
        format.html { redirect_to @coffeespot, notice: 'Coffeespot was successfully created.' }
        format.json { render json: @coffeespot, status: :created, location: @coffeespot }
      else
        format.html { render action: "new" }
        format.json { render json: @coffeespot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coffeespots/1
  # PUT /coffeespots/1.json
  def update
    @coffeespot = Coffeespot.find(params[:id])

    respond_to do |format|
      if @coffeespot.update_attributes(params[:coffeespot])
        format.html { redirect_to @coffeespot, notice: 'Coffeespot was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @coffeespot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffeespots/1
  # DELETE /coffeespots/1.json
  def destroy
    @coffeespot = Coffeespot.find(params[:id])
    @coffeespot.destroy

    respond_to do |format|
      format.html { redirect_to coffeespots_url }
      format.json { head :ok }
    end
  end
end
