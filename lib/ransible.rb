require 'ransible/version'
require_relative 'ransible/arguments_file'
require_relative 'ransible/result'

# The entrypoint to the module
module Ransible
  def self.module
    result = Result.new
    yield result, arguments
    print JSON.dump(result.changes)
  rescue FailError => e
    print JSON.dump failed: true, msg: e.message
  end

  def self.arguments
    ArgumentsFile.new(ARGV[0]).to_hash
  end
  private_class_method :arguments
end
