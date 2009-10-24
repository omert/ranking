class RankingsController < ApplicationController
  # GET /rankings
  # GET /rankings.xml
  def index
    @rankings = Ranking.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rankings }
    end
  end

  # GET /rankings/1
  # GET /rankings/1.xml
  def show
    @ranking = Ranking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ranking }
    end
  end

  # GET /rankings/new
  # GET /rankings/new.xml
  def new
    @ranking = Ranking.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ranking }
    end
  end

  # GET /rankings/1/edit
  def edit
    @ranking = Ranking.find(params[:id])
  end

  # POST /rankings
  # POST /rankings.xml
  def create
    @ranking = Ranking.new(params[:ranking])

    respond_to do |format|
      if @ranking.save
        flash[:notice] = 'Ranking was successfully created.'
        format.html { redirect_to(@ranking) }
        format.xml  { render :xml => @ranking, :status => :created, :location => @ranking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rankings/1
  # PUT /rankings/1.xml
  def update
    @ranking = Ranking.find(params[:id])

    respond_to do |format|
      if @ranking.update_attributes(params[:ranking])
        flash[:notice] = 'Ranking was successfully updated.'
        format.html { redirect_to(@ranking) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rankings/1
  # DELETE /rankings/1.xml
  def destroy
    @ranking = Ranking.find(params[:id])
    @ranking.destroy

    respond_to do |format|
      format.html { redirect_to(rankings_url) }
      format.xml  { head :ok }
    end
  end
end
