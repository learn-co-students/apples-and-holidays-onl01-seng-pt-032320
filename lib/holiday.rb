#require 'pry'
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

   def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash.each do |seasons, holidays|
      holidays.each do |days, characteristics|
        if days == :fourth_of_july
          return characteristics[1]
        end
      end
    end
 end




def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :christmas || day == :new_years
        things << supply
      end
    end
  end
end

# again, holiday_hash is the same as the ones above
# add the second argument to the memorial day array

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :memorial_day
        things << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
end


def all_winter_holiday_supplies(holiday_hash)
   holiday_hash.each do |season, holiday|
    if season == :winter
      return holiday.values.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, hash|
   
    puts season.to_s.capitalize + ":"
      hash.each do |holiday, supply|
        #binding.pry
       puts "  "+ holiday.to_s.split("_",).collect {|word| word
        .capitalize}.join(" ") +  ":" +" "+ supply.join( ", ")
         
      end
  end
end

 
   
  def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.keys.each do |season| # iterate over the keys(seasons) in your holiday_hash.
    holiday_hash[season].each do |key, value| # iterate over inner hash where season is the key.            
      new_array << key if value.include? 'BBQ'
    end
  end
  new_array
end

#p all_holidays_with_bbq(holiday_hash)

 #end
