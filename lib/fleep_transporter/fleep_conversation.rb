class FleepConversation

  attr_reader :data, :messages

  def initialize(conv)
    @data = conv
    @messages = conv['messages'].map { |m| FleepMessage.new(m, self) }
  end

  def topic
    data['topic']
  end

  def topic?
    topic && topic.strip != ''
  end

  def full_topic
    (topic? ? topic : "Conversation #{id}").gsub(/[#&\/]/, '')
  end

  def export_topic
    Configuration.get(:channel_prefix) + full_topic
  end

  def type
    data['mk_rec_type']
  end

  def id
    data['conversation_id']
  end

  def members
    data['members']
  end

  def text_messages
    messages.select { |m| m.text? }
  end

end
