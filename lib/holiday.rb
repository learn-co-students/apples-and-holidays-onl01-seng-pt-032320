require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
        supplies << supply
  end 
  return holiday_hash
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
  return holiday_hash
end 


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array  
  return holiday_hash 
end 
    


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten 
end 



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect{|word|word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
  end 
end 

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays| 
   holidays.collect do |holiday, supplies| 
     if supplies.include?("BBQ") 
       holiday
      end 
    end
  end.flatten.compact
end

#  if .include? block evaluates to true and I use the .select method instead of .collect it will return the element which made the block evaluate to true and in this case is the hash {:fourth_of_july=>["Fireworks", "BBQ"]}.  For future, solve from here 
    

 







