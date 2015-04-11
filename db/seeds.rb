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
    image: "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/#{champion['name']}_0.jpg",
    sprite: "http://ddragon.leagueoflegends.com/cdn/5.6.1/img/champion/#{champion['image']['full']}"
  )
end

SearchOption.create(name: 'Win every game!', 
  associated_stat: 'wins',
  ordering: 'DESC',
  explanation: "{champ_name} has the highest winrate of all the champions. Pick this champion in yout next game to increase your chances of winning!")

SearchOption.create(name: 'Make tons of damage!',
  associated_stat: 'total_damage_dealt_to_champions',
  ordering: 'DESC',
  explanation: "{champ_name} has the highest damage rate in the entire URF kingdom. Choose this champion to make your enemies cry for mercy!")

SearchOption.create(name: 'Kill all the enemies!', 
  associated_stat: 'kills', 
  ordering: 'DESC',
  explanation: "So you want to get very VERY fed? {champ_name} has the highest kill rate; pick this champion and kill 'em all!")

SearchOption.create(name: 'Be very useful for my teammates!', 
  associated_stat: 'assists', 
  ordering: 'DESC',
  explanation: "So you want to help your teammates no matter what? Choose {champ_name} in order to get as many assists as is possible in a match!")

SearchOption.create(name: 'Get my level through the sky!', 
  associated_stat: 'champ_level', 
  ordering: 'DESC',
  explanation: "If you want to get your champion level to the roof, pick {champ_name} and get the highest posible level! (Note: in URF there is no level cap at 18)"

SearchOption.create(name: 'Be unkillable!', 
  associated_stat: 'deaths', 
  ordering: 'ASC',
  explanation: "So you want to survive every single teamfight and give your opponents a headache trying to kill you? {champ_name} is your best choice to remain unbeaten for the entire game!"

SearchOption.create(name: 'Be a double kill monster!', 
  associated_stat: 'double_kills', 
  ordering: 'DESC',
  explanation: "you want to get many double kills? That's not very ambitious... Anyway, pick {champ_name} and get tons of double kills! (just don't kill more than two champions in a row)"

SearchOption.create(name: 'Be rich!', 
  associated_stat: 'gold_earned', 
  ordering: 'DESC',
  explanation: "Pick {champ_name} and let the gold fall from the sky (not literally) and become the richest champion!"

SearchOption.create(name: 'Deal tons of magic damage!', 
  associated_stat: 'magic_damage_dealt_to_champions', 
  ordering: 'DESC',
  explanation: "In order to become the best wizzard of all times, you should pick {champ_name}. Get your enemies vaporized with your high magic damage spells!"

SearchOption.create(name: 'Tank lots of magic damage!', 
  associated_stat: 'magic_damage_taken', 
  ordering: 'DESC',
  explanation: "If you want to absorb all of the magic damage from the enemy team you should definitely pick {champ_name}"

SearchOption.create(name: 'Farm, farm and keep farming!', 
  associated_stat: 'minions_killed', 
  ordering: 'DESC',
  explanation: "Can you hear it? It's the scream of the minions running. If you want to get your creep score through the roof, pick {champ_name}"

SearchOption.create(name: 'The monster of the jungle!', 
  associated_stat: 'neutral_minions_killed', 
  ordering: 'DESC',
  explanation: "Pick {champ_name} and you'll kill more jungle creeps than any other jungler before!"

SearchOption.create(name: 'Be a Penta-Player!', 
  associated_stat: 'penta_kills', 
  ordering: 'DESC',
  explanation: "Is 5 the perfect number for you? Then pick {champ_name} and get one PentaKill after another!"

SearchOption.create(name: 'AD monster!', 
  associated_stat: 'physical_damage_dealt_to_champions', 
  ordering: 'DESC',
  explanation: 'Make your enemies cry for mercy, because {champ_name} will deal tons of Physical damage to them'

SearchOption.create(name: 'Tank lots of physical damage!', 
  associated_stat: 'physical_damage_taken', 
  ordering: 'DESC',
  explanation: '{champ_name} has the perfect armor, so pick him and no one will ever get your HP low again!'

SearchOption.create(name: 'Be a quadra kill player!', 
  associated_stat: 'quadra_kills', 
  ordering: 'DESC',
  explanation: 'You want to get as many quadra kills as possible? Pick {champ_name} and make your dream become true! (Just remember to leave the fifth player alive)'

SearchOption.create(name: 'Be a damage monster!', 
  associated_stat: 'total_damage_dealt_to_champions', 
  ordering: 'DESC',
  explanation: '{champ_name}, the perfect attack champion. Pick him and cause tons of physical and magical damage to your enemies!'

#  total_damage_taken                 :integer
#  total_heal                         :integer
#  total_time_crowd_control_dealt     :integer
#  tower_kills                        :float
#  triple_kills                       :float
#  true_damage_dealt_to_champions     :integer
#  unreal_kills                       :float
#  wards_placed                       :float
#  wins                               :float
#  loses                              :float
#  region_id                          :integer
#  count                              :integer