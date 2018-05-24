require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_first_name = nil
  data[season].each do |galdem|
    if galdem["status"] == "Winner"
      winner_first_name = galdem.fetch("name").split[0].to_s
    end
  end
  return winner_first_name
end

def get_contestant_name(data, occupation)
  contestant_name = nil
  data.each do |season, galdem_data|
    galdem_data.each do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
    end
  end
end
  return contestant_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, galdem_data|
    galdem_data.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, galdem_data|
    galdem_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_counter_sum = 0
  number_of_ladies = 0
  age_counter_average = 0
  data[season].each do |galdem|
    age_counter_sum += galdem["age"].to_f
    number_of_ladies += 1
  end
  age_counter_average = age_counter_sum / number_of_ladies
  return age_counter_average.round
end
