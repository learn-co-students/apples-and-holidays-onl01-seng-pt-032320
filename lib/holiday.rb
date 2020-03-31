require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
        supplies << supply 
      end 
    end
  end 
  return holiday_hash
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        supplies << supply 
      end 
    end
  end 
  return holiday_hash
end 


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season, holidays|
    holidays[holiday_name] = supply_array  
  end 
  return holiday_hash 
end 
    


def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies = [] 
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      holiday_supplies << supplies 
    end
  end
  return holiday_supplies.flatten 
end 



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    puts season.to_s.capitalize!
    holidays_hash.each do |holiday, supplies|
      puts holiday.to_s.capitalize! 
      supplies.each do |supply|
        supply.split 
        supply.capitalize! 
        supply.join() 
      end 
    end 
  end 
end 
      
        
      
  end
end 
  
  # {:winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # {:winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







