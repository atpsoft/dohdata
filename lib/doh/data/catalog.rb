require 'doh/class_basename'

module DohData

@@catalog = {'all' => {}}
def self.catalog
  @@catalog
end

def self.catalog=(key, value)
  @@catalog[key]
end

def self.catalog_list(group = nil)
  @@catalog[group || 'all'].values.collect do |klass|
    text = Doh::class_basename(klass)
    if klass.respond_to?('description')
      text += ' - ' + klass.description
    end
    text
  end.sort
end

def self.add_to_catalog(klass, *groups_ary)
  lookup_str = Doh::class_basename(klass).downcase
  raise "can't add class #{klass.inspect} - there's already a class registered with a lookup string of '#{lookup_str}'" if @@catalog['all'].key?(lookup_str)
  @@catalog['all'][lookup_str] = klass
  groups_ary.each do |group|
    @@catalog[group] ||= {}
    @@catalog[group][lookup_str] = klass
  end
end

def self.search_catalog(text)
  @@catalog['all'][text.strip.downcase]
end

end

class Class
  def dohdata_catalog(*groups_ary)
    DohData::add_to_catalog(self, *groups_ary)
  end
end
