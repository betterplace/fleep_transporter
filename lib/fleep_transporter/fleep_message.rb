require 'nokogiri'

class FleepMessage

  attr_reader :data, :message_payload, :conversation

  def initialize(message, conversation)
    @data = message
    @message_payload = JSON.parse(message['message']) if text?
    @conversation = conversation
  end

  def timestamp
    data['posted_time']
  end

  def p_text(p_node)
    p_node.css('b').each { |n| n.content = "*#{n.text}*"}
    p_node.css('i').each { |n| n.content = "_#{n.text}_"}
    p_node.css('strong').each { |n| n.content = "*#{n.text}*"}
    p_node.text
  end

  def text
    text? or return ''
    doc = Nokogiri::HTML(message_payload['message'])
    doc.css('p').map { |par| p_text(par) }.join("\n\n") + "\n\n" +
    attachments.map(&:as_text).join("\n\n")
  end

  def conversation_topic
    conversation.topic
  end

  def conversation_members
    conversation.members
  end

  def channel_name
    Configuration.get(:channel_prefix) + if conversation_topic == ""
      "Conversation by #{conversation_members}"
    else
      conversation_topic
    end
  end

  def text?
    type == 'textV2'
  end

  def type
    data['mk_message_type']
  end

  def user_account
    data['account_id']
  end

  def attachments
    Array(message_payload['attachments']).map { |a| FleepAttachment.new(a, self) }
  end

  def to_s
    JSON.pretty_generate(message_payload)
  end

end
