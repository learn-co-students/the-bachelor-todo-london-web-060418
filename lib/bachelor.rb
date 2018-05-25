require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each { |data|
    if data["status"] == "Winner"
      first_name = data["name"].split(" ")
      return first_name[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each {|current_season, season_data|
   #binding.pry
    season_data.each { |current_data|
    #binding.pry
      if current_data["occupation"] == occupation
        name = current_data["name"]
        return name
      end
    }  
  }
end

def count_contestants_by_hometown(data, hometown)
   town_count = 0
   data.each {|current_season, season_data|
   #binding.pry
    season_data.each { |current_data|
    #binding.pry
      if current_data["hometown"] == hometown
        town_count = town_count + 1
      end
    }  
  }
  town_count
end

def get_occupation(data, hometown)
   data.each {|current_season, season_data|
   #binding.pry
    season_data.each { |current_data|
    #binding.pry
      if current_data["hometown"] == hometown
        return current_data["occupation"]
      end
    }  
  }
end

def get_average_age_for_season(data, season)
  age = 0
  data[season].each { |data|
    age = age + data["age"].to_f
  }
  age = age / data[season].length
  age.round
end
