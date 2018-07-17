require 'date'
require 'dohdata/bulk'

module DohData
extend self

def random_first_name
  random_element(@@first_names)
end

def random_last_name
  random_element(@@last_names)
end

def random_generation
  random_element(@@generation_options)
end

def random_us_state_abbreviation
  random_element(@@us_state_abbreviations)
end

def random_us_state_long_name
  random_element(@@us_state_long_names)
end

def random_occupation
  random_element(@@occupations)
end

def random_us_state
  (random_int(2) == 0) ? DohData::random_us_state_abbreviation : DohData::random_us_state_long_name
end

def random_us_zip
  random_digits(5) + ((random_int(4) == 0) ? '-' + random_digits(4) : '')
end

def random_us_phone
  random_range(200,999).to_s + '-' + random_digits(3) + '-' + random_digits(4)
end

def random_full_name
  random_first_name + ' ' + random_last_name
end

def random_email(first_name = nil, last_name = nil)
  domain = '@' + random_element(@@email_domains) + '.com'
  max_name_size = 50 - domain.size

  if first_name || last_name
    name = ''
    name += first_name.slice(0, random_range(1, first_name.size)) if first_name
    name += random_element('', '.', '_') if first_name && last_name
    name += last_name.slice(0, random_range(1, last_name.size)) if last_name
    name = name[0..(max_name_size-1)]
    max_num_size = max_name_size - name.size
    name += random_digits(random_range([7, max_num_size].min, [12, max_num_size].min))
  else
    name_size = random_range([12, max_name_size].min, [16, max_name_size].min)
    name = random_letters(name_size)
  end
  name + domain
end

def ssn_areas
  @@ssn_areas ||= @@ssn_area_highgroups.keys
end

def random_ssn
  area = random_element(ssn_areas)
  highgroup = @@ssn_area_highgroups[area]
  highgroup_index = @@ssn_group_order.index(highgroup)
  possible_groups = @@ssn_group_order.slice(0..highgroup_index)
  group = random_element(possible_groups)
  area.to_s.rjust(3, '0') + group.to_s.rjust(2, '0') + random_range(1, 9999).to_s.rjust(4, '0')
end

def random_city
  random_element(@@cities)
end

def random_street_name
  random_element(@@street_names)
end

def random_street_type
  random_element(@@street_types)
end

def random_street_number
  weight = random_int(10)
  if weight > 8
    random_int(50000)
  elsif weight > 3
    random_int(10000)
  elsif weight > 1
    random_int(1000)
  else
    random_int(100)
  end
end

def random_street
  random_street_number.to_s + ' ' + random_element('N','E','S','W') + ' ' + random_street_name + ' ' + random_street_type
end

def random_birthday
  Date.new(1928 + random_int(56), random_int(12) + 1, random_int(27) + 1)
end

def random_bank_routing_number
  random_element(@@bank_routing_numbers)
end

def random_bank_account_number(max_size = 17)
  random_digits(random_range(5, max_size))
end

def random_employer_name
  random_element(@@employers)
end

def random_relation
  random_element(['cousin', 'mother', 'father', 'aunt', 'uncle', 'brother', 'sister', 'son', 'daughter'])
end

def random_country_code
  random_element(['USA', 'MEX', 'CAN'])
end

FIRST_OCTET = ((1..223).to_a - [10,100,127,169,172,192,198,203]).freeze
def random_ip_address
  "#{random_element(FIRST_OCTET)}.#{random_int(256)}.#{random_int(256)}.#{random_int(256)}"
end

end
