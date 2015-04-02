class Collector
  def collect!
    @start_time = Time.now
    p "Collector invoked"
    Region.all.each do |region|
      fetcher = DataFetcher.new(region)
      match_ids = []

      response = fetcher.fetch_urf_matches(round_time(2.hours.ago, 5).to_i)
      if response.code == 200
        match_ids = JSON.parse(response.body)
      end

      match_ids.each do |match_id|
        response = fetcher.fetch_match_data(match_id)
        if response.code == 200
          json_string = response.body

          parser = DataParser.new(json_string)
          parser.parse!
        end
      end
    end
    p "Collector finished:"
    p (Time.now - @start_time) + "seconds"
  end

  def round_time(time, minutes)
    time-time.sec-time.min%minutes*60
  end
end
