require 'json'

module Ransible
  # Arguments file parser
  class ArgumentsFile
    attr_accessor :body, :data, :filename

    def initialize(filename)
      self.filename = filename
    end

    def to_hash
      self.data ||= pairs.inject({}) do |h, kv|
        h.merge(Hash[*kv.split('=')])
      end
    end

    private

    def body
      @body ||= File.read(filename)
    end

    def pairs
      @pairs ||= body.split ' '
    end
  end
end
