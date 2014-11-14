module Ransible
  # Arguments file parser
  class ArgumentsFile
    attr_accessor :body, :data, :filename

    def initialize(filename)
      self.filename = filename
    end

    def to_hash
      self.data ||= JSON.parse(body)
    end

    private

    def body
      @body ||= File.read(filename)
    end
  end
end
