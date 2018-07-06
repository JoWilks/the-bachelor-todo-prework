def get_first_name_of_season_winner(data, season)
winner =[]

  data.each {|s,contestants| 
    if s.to_s === season
      puts "#{s} & #{contestants}"
        contestants.each {|cont_a| 
          cont_a.each {|val_type, val| 
            if val === "Winner"             
              winner << cont_a
            end
          }
        }
    end
  }

winner_name = []
winner.each {|key| puts "#{key}" 
  key.each { |type, value| 
    if type.to_s == "name"
      winner_name << value
    end
  } 
}

(winner_name[0].split(" "))[0]
end


def get_contestant_name(data, occupation)
    
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
