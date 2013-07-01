class ChuuksController < ApplicationController
  # GET /chuuks
  # GET /chuuks.json
  def index
    @chuuks = Chuuk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chuuks }
    end
  end

  # GET /chuuks/1
  # GET /chuuks/1.json
  def show
    @chuuk = Chuuk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chuuk }
    end
  end

  # GET /chuuks/new
  # GET /chuuks/new.json
  def new
    @chuuk = Chuuk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chuuk }
    end
  end

  # GET /chuuks/1/edit
  def edit
    @chuuk = Chuuk.find(params[:id])
  end

  # POST /chuuks
  # POST /chuuks.json
  def create
    @chuuk = Chuuk.new(params[:chuuk])

    respond_to do |format|
      if @chuuk.save
        format.html { redirect_to @chuuk, notice: 'Chuuk was successfully created.' }
        format.json { render json: @chuuk, status: :created, location: @chuuk }
      else
        format.html { render action: "new" }
        format.json { render json: @chuuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chuuks/1
  # PUT /chuuks/1.json
  def update
    @chuuk = Chuuk.find(params[:id])

    respond_to do |format|
      if @chuuk.update_attributes(params[:chuuk])
        format.html { redirect_to @chuuk, notice: 'Chuuk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chuuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuuks/1
  # DELETE /chuuks/1.json
  def destroy
    @chuuk = Chuuk.find(params[:id])
    @chuuk.destroy

    respond_to do |format|
      format.html { redirect_to chuuks_url }
      format.json { head :no_content }
    end
  end
end
