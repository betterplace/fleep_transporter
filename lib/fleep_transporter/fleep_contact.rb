class FleepContact

  attr_reader :data

  def initialize(contact)
    @data = contact
  end

  def id
    data['account_id']
  end

  def username
    data['fleep_address']
  end

  def email
    data['email']
  end

end
