namespace :api do
  task :collect_urf_data => :environment do
    Collector.collect!
  end
end
    