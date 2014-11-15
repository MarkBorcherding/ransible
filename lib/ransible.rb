require 'ransible/version'
require_relative 'ransible/arguments_file'
require_relative 'ransible/result'

# The entrypoint to the module
module Ransible
  def self.module
    result = Result.new
    yield result, arguments
  end

  def self.arguments
    ArgumentsFile.new(ARGV[0]).to_hash
  end
  private_class_method :arguments
end
