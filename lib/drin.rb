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


__END__
'json', run endrell loop

class Object
  def method_missing(name, *args)
    begin
      require name.to_s.downcase
      return self.send(name)
    rescue LoadError
      super
    end
  end

  def to_ary
    nil
  end
end
