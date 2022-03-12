# It takes an integer and converts it into Roman numeral.

# Map all romen numerals.
# Find less than our integer
# Take quotient.
  # If quotient more equal than one
  # Take it into an array.
# Lessen our integer as number.

def int_to_romen(map, int)
  result = []

  map.select do |number, romen| #Map all roman mapping.
    if number <= int # if any number of roman mapping less than int(12)
      quotient = int / number # take quotient. 12\10 => 1
      if quotient >= 1
        result << romen * quotient # romen is any romen number multiple by quotient
      end
      int -= number # lessen our int
    end
  end

  puts result.join()
end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

int_to_romen(roman_mapping, 12)