namespace :data do
  task :calculate_averages => :environment do
    t = Time.now
    puts "Caclulating averages..."
    champ_average = ChampAverages.new
    champ_average.calculate!
    puts "Done, " + (Time.now - t).to_s + " seconds"
  end
end
