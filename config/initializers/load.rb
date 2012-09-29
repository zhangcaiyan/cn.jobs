files = Dir.glob(Rails.root.join("app/decorators/*/**/*.rb"))

files.each { |file|;  require file; }


