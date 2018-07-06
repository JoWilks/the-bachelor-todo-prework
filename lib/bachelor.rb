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


def get_contestant_name(data, job)
contestant =[]

  data.each {|s,contestants| #puts "#{s} & #{contestants}"
        contestants.each {|cont_a| #puts "#{cont_a}!!!"
          cont_a.each {|val_type, val| #puts "#{val_type} & #{val}"
              if val == job
                contestant << cont_a
              end
          }
        }
  }

contestant

contestant_name = []
contestant.each {|key| #puts "#{key}" 
  key.each { |type, value| 
    if type.to_s == "name"
      contestant_name << value
    end
  } 
}

contestant_name[0]
end


def count_contestants_by_hometown(data, hometown)
no_contestants =[]

  data.each {|s,contestants| #puts "#{s} & #{contestants}"
        contestants.each {|cont_a| #puts "#{cont_a}!!!"
          cont_a.each {|val_type, val| #puts "#{val_type} & #{val}"
              if val == hometown
                no_contestants << cont_a
              end
            }
        }
  }

no_contestants.length
end


def get_occupation(data, hometown)
occ =[]

  data.each {|s,contestants| #puts "#{s} & #{contestants}"
        contestants.each {|cont_a| #puts "#{cont_a}!!!"
          cont_a.each {|val_type, val| #puts "#{val_type} & #{val}"
              if val == hometown
                occ << cont_a
              end
            }
        }
  }
corr_occ = []
occ.each {|key| #puts "#{key}" 
  key.each { |type, value| 
    if type.to_s == "occupation"
      corr_occ << value
    end
  } 
}

corr_occ[0]
end


def get_average_age_for_season(data, season)
all_cont =[]

  data.each {|s,contestants| 
    if s.to_s === season 
        contestants.each {|cont_a| 
          cont_a.each {|val_type, val| 
              if val_type == :age
              all_cont << val
              end
          }
        }
    end
  }

sum = all_cont.inject { |a, b| a.to_i + b.to_i} 
all_cont.length.to_i
return total
end
