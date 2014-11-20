module Ransible
  # Raised when the module does not execute successfully
  class FailError < RuntimeError; end

  # The result object that is passed to the Ransible.module block
  class Result
    attr_accessor :changes

    def initialize
      self.changes = {}
    end

    def fail!(message = '')
      fail FailError, message
    end

    def change!(params)
      changes.merge! changed: true
      changes.merge! params
    end
  end
end
