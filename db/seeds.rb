Region.create(name: "North America", key: "NA")
Region.create(name: "Latin America South", key: "LAS")
Region.create(name: "Latin America North", key: "LAN")
Region.create(name: "Brazil", key: "BR")
Region.create(name: "Europe Nordic & East", key: "EUNE")
Region.create(name: "Europe West", key: "EUW")
Region.create(name: "Oceania", key: "OCE")
Region.create(name: "Republic of Korea", key: "KR")
Region.create(name: "Russia", key: "RU")
Region.create(name: "Turkey", key: "TR")


response = HTTParty.get("http://ddragon.leagueoflegends.com/cdn/5.6.1/data/en_US/champion.json")
champions = JSON.parse response.body

champions['data'].each do |champ|
  champion = champ[1]
  Champion.create(
    champion_key: champion['key'].to_i,
    name: champion['name'],
    title: champion['title'],
    image: "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/#{champion['key']}_0.jpg",
    sprite: "http://ddragon.leagueoflegends.com/cdn/5.6.1/img/champion/#{champion['image']['full']}"
  )
end
