require 'doh/root'

module DohData

def self.require_datagen
  lib_datagen_file = File.join(Doh::root, 'lib/datagen.rb')
  require(lib_datagen_file) if File.exist?(lib_datagen_file)
end

end
