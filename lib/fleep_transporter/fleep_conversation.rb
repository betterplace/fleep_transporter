class FleepConversation

  attr_reader :data, :messages

  def initialize(conv)
    @data = conv
    @messages = conv['messages'].map { |m| FleepMessage.new(m) }
  end

  def topic
    data['topic']
  end

end
