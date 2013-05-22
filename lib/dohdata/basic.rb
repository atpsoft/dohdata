module DohData

#implemented here so random behavior can be overridden by end user
def random_int(max)
  rand(max)
end

def random_characters(count, values_string)
  retval = ''
  count.times {retval += values_string.slice(random_int(values_string.size), 1)}
  retval
end

def random_letters(count)
  random_characters(count, 'abcdefghijklmnopqrstuvwxyz')
end

def random_digits(count)
  random_characters(count, '0123456789')
end

def random_alnum(count)
  random_characters(count, 'abcdefghijklmnopqrstuvwxyz0123456789')
end

def random_range(min, max, multiplier = 1)
  (random_int(max + 1 - min) + min) * multiplier
end

def random_array_element(array)
  array[random_int(array.size)]
end

def random_element(*args)
  flat = args.flatten
  flat[random_int(flat.size)]
end

def random_bool
  random_element(true, false)
end

def random_amount(max, multiplier = 1)
  (random_int(max) + 1) * multiplier
end

def random_percent(percent)
  random_int(100) < percent
end

def random_date(min, max)
  diff = (max + 1 - min)
  min + random_int(diff)
end

end

