require "drin/version"

module Drin
  CLASSES = {
    'fileutils' => 'FileUtils'
  }
end

def Object.const_missing(name)
  begin
    require name.to_s.downcase
    return eval(Drin::CLASSES[name.to_s.downcase] || name.to_s)
  rescue LoadError
    super
  end
end
