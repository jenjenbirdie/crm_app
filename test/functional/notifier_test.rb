require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "general_email" do
    mail = Notifier.general_email
    assert_equal "General email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "contact_email" do
    mail = Notifier.contact_email
    assert_equal "Contact email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
