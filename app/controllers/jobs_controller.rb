def index
  @jobs = Job.order(:created_at)
  
  respond_to do |format|
    format.html
    format.csv { send_data @jobs.as_csv }
  end
end