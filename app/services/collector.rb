class Collector
  def self.collect!
    p "Collector invoked"
    Region.all.each do |region|
      #chequear el status code
      match_ids = [] #traer los  ids de NURF de la region actual

      match_ids.each do |match_id|
        fetcher = DataFetcher.new(region)
        json_string = fetcher.fetch_match_data(150960304)

        parser = DataParser.new(json_string)
        parser.parse!
      end
    end
    p "Collector finished"
  end
end
