class FleepConversation

  attr_reader :data, :messages

  def initialize(conv)
    @data = conv
    @messages = conv['messages'].map { |m| FleepMessage.new(m) }
  end

  def topic
    data['topic']
  end

  def type
    data['mk_rec_type']
  end

  def id
    data['conversation_id']
  end

  def members
    @members = data['members']
  end

  def text_messages
    messages.select { |m| m.text? }
  end

end
