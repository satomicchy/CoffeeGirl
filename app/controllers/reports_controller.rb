class ReportsController < ApplicationController
  before_filter :authenticate_member!, :except => [:index]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reports }
    end
  end

  # GET /reports/new
  # GET /reports/new.json
  def new
    @event = Event.find(params[:event_id])
    @report = @event.reports.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @report = Report.find(params[:id])
  end

  # POST /reports
  # POST /reports.json
  def create
    @event = Event.find(params[:event_id])
    @report = @event.reports.new(params[:report])
    @report.attributes = params[:report]
    @report.member_id = current_member.id

    respond_to do |format|
      if @report.save
        format.html { redirect_to(event_path(@event)) }
        format.json { render json: @report, status: :created, location: @report }
      else
        format.html { render action: "new" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.json
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to reports_url }
      format.json { head :ok }
    end
  end
end
