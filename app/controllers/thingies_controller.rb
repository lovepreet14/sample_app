class ThingiesController < ApplicationController
  # GET /thingies
  # GET /thingies.json
  def index
    @thingies = Thingy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thingies }
    end
  end

  # GET /thingies/1
  # GET /thingies/1.json
  def show
    @thingy = Thingy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thingy }
    end
  end

  # GET /thingies/new
  # GET /thingies/new.json
  def new
    @thingy = Thingy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thingy }
    end
  end

  # GET /thingies/1/edit
  def edit
    @thingy = Thingy.find(params[:id])
  end

  # POST /thingies
  # POST /thingies.json
  def create
    @thingy = Thingy.new(params[:thingy])

    respond_to do |format|
      if @thingy.save
        format.html { redirect_to @thingy, notice: 'Thingy was successfully created.' }
        format.json { render json: @thingy, status: :created, location: @thingy }
      else
        format.html { render action: "new" }
        format.json { render json: @thingy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thingies/1
  # PUT /thingies/1.json
  def update
    @thingy = Thingy.find(params[:id])

    respond_to do |format|
      if @thingy.update_attributes(params[:thingy])
        format.html { redirect_to @thingy, notice: 'Thingy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thingy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thingies/1
  # DELETE /thingies/1.json
  def destroy
    @thingy = Thingy.find(params[:id])
    @thingy.destroy

    respond_to do |format|
      format.html { redirect_to thingies_url }
      format.json { head :no_content }
    end
  end
end
