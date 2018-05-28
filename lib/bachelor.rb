require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestantarray|
    if season_num == season
      contestantarray.each do |contestant_info|
        if contestant_info["status"] = "Winner"
          winner = contestant_info["name"]
          return winner.split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestantarray|
    contestantarray.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, contestantarray|
    contestantarray.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_num, contestantarray|
    contestantarray.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  seasonages = []
  data[season].each do |contestantarray|
    seasonages << contestantarray["age"].to_f
  end
  seasonsum = 0
  seasonages.each do |age|
    seasonsum += age
  end
  (seasonsum / seasonages.length).round
end
