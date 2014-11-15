module Ransible
  # Raised when the module does not execute successfully
  class FailError < RuntimeError; end

  # The result object that is passed to the Ransible.module block
  class Result
    def fail!(message = '')
      fail FailError, message
    end
  end
end
