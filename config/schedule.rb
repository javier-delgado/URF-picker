set :environment, "production"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

#Disabled beacuse of end of event
#every 10.minutes do
  #rake "api:collect_urf_data"
#end
