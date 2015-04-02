namespace :api do
  task :collect_urf_data => :environment do
    Collector.new.collect!
  end
end
    