Region.create(name: "North America", key: "na")
Region.create(name: "Latin America South", key: "las")
Region.create(name: "Latin America North", key: "lan")
Region.create(name: "Brazil", key: "br")
Region.create(name: "Europe Nordic & East", key: "eune")
Region.create(name: "Europe West", key: "euw")
Region.create(name: "Oceania", key: "oce")
Region.create(name: "Republic of Korea", key: "kr")
Region.create(name: "Russia", key: "ru")
Region.create(name: "Turkey", key: "tr")


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
