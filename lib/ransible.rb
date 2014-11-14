require 'ransible/version'

# The entrypoint to the module
module Ransible
  def self.module
    yield 'a', 'b'
  end
end
