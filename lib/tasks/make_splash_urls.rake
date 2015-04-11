namespace :champion do
  task :set_image_urls => :environment do
    Champion.all.each do |champ|
      champ.image = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/" +
        champ.name.gsub(" ", "").gsub("'", "").gsub(".", "") + "_0.jpg"
      champ.save
    end
  end
end
