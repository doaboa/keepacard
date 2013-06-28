class BcardsController < ApplicationController
  # GET /bcards
  # GET /bcards.json
  def index
    @bcards = Bcard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bcards }
    end
  end

  # GET /bcards/1
  # GET /bcards/1.json
  def show
    @bcard = Bcard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bcard }
    end
  end

  # GET /bcards/new
  # GET /bcards/new.json
  def new
    @bcard = Bcard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bcard }
    end
  end

  # GET /bcards/1/edit
  def edit
    @bcard = Bcard.find(params[:id])
  end

  # POST /bcards
  # POST /bcards.json
  def create
    @bcard = Bcard.new(params[:bcard])

    respond_to do |format|
      if @bcard.save
        format.html { redirect_to @bcard, notice: 'Bcard was successfully created.' }
        format.json { render json: @bcard, status: :created, location: @bcard }
      else
        format.html { render action: "new" }
        format.json { render json: @bcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bcards/1
  # PUT /bcards/1.json
  def update
    @bcard = Bcard.find(params[:id])

    respond_to do |format|
      if @bcard.update_attributes(params[:bcard])
        format.html { redirect_to @bcard, notice: 'Bcard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bcards/1
  # DELETE /bcards/1.json
  def destroy
    @bcard = Bcard.find(params[:id])
    @bcard.destroy

    respond_to do |format|
      format.html { redirect_to bcards_url }
      format.json { head :no_content }
    end
  end
end
