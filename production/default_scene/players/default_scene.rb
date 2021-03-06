$: << File.expand_path(File.dirname(__FILE__) + "/lib")
require 'controller'
require 'sanitizer'
require 'key_map'

module DefaultScene

  include Controller

  attr_accessor :meter
  attr_accessor :timer

  def key_pressed(event)
    key_code = event.getKeyCode
    method_name = KeyMap.method_name_of(key_code)
    send(method_name.to_sym) if method_name
  end

end