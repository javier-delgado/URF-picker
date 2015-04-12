namespace :champion do
  task :set_image_urls => :environment do
    Champion.all.each do |champ|
      champ.image = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/" +
        champ.name.gsub(" ", "").gsub("'", "").gsub(".", "") + "_0.jpg"
      champ.save
    end

    #Fix special cases
    champ = Champion.find_by(name: "Cho'Gath")
    champ.image = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Chogath_0.jpg"
    champ.save
    champ = Champion.find_by(name: "Kha'Zix")
    champ.image = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Khazix_0.jpg"
    champ.save
    champ = Champion.find_by(name: "Vel'Koz")
    champ.image = "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Velkoz_0.jpg"
    champ.save
  end
end
