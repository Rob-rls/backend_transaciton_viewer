class ResponseGenerator

  def response_message
    key = Kernel.rand(3)
    return { status: status(key) }
  end

  def status(key)
    return 'successful' if key == 0
    return 'fradulent' if key == 1
    return 'timed_out' if key == 2
  end

end
