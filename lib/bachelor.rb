require "pry"

def get_first_name_of_season_winner(data, season)
  # code here returns Name of season winner
  contestants_array = data[season]
  contestants_array.each do |contestant_hash|
      if(contestant_hash["status"].downcase == "winner")
        return contestant_hash["name"].split(" ")[0]
      end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_key, array_set|
  array_set.each do |contestant_hash|
      if(contestant_hash["occupation"] == occupation)
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 count = 0
 data.each do |season_key, array_set|
 array_set.each do |contestant_hash|
     if(contestant_hash["hometown"] == hometown)
      count += 1
     end
   end
 end
 return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_key, array_set|
  array_set.each do |contestant_hash|
      if(contestant_hash["hometown"] == hometown)
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)

  age_sum = 0
  contestants_array = data[season]
  contestants_array.each { |contestant_hash| age_sum += contestant_hash["age"].to_i  }
  average_age = (age_sum.to_f / (contestants_array.length))
  return average_age.round
end
