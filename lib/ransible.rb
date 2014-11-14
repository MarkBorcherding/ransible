require 'ransible/version'

# The entrypoint to the module
module Ransible
  def self.module(&block)
    yield block
  end
end
