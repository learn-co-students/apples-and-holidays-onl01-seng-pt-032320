require 'pry'

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
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
  # return the second element in the 4th of July array

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer].values.flatten[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, natlholiday|
    if season == :winter
      natlholiday.each do |natlholiday, itemlist|
        if natlholiday == :christmas 
          itemlist<<supply
        elsif natlholiday == :new_years
          itemlist<<supply
        end
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash.each do |season, natlholiday|
    if season == :spring
      natlholiday.each do |natlholiday, itemlist|
        if natlholiday == :memorial_day 
          itemlist<<supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.map do |season, natlholiday|
    puts "#{season}:".capitalize
  natlholiday.map do |natlholiday, supplies|
    puts "  #{natlholiday.to_s.split('_').map {|w| w.capitalize }.join(' ')}: #{supplies.join(", ")}"
  end
end
end


  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  new_array=[]
  holiday_hash.map do |season, natlholiday|
  natlholiday.map do |holidayname, supplies|
    if supplies.include?("BBQ")
       new_array<<holidayname
    end
  end
end
return new_array
end







