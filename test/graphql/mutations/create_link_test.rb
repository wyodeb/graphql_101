require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new link' do
    link = perform(
      url: 'https://www.linkedin.com/in/sergiu-besliu/',
      description: 'Sergiu Beșliu LinkedIn profile',
      )

    assert link.persisted?
    assert_equal link.description, 'Sergiu Beșliu LinkedIn profile'
    assert_equal link.url, 'https://www.linkedin.com/in/sergiu-besliu/'
  end
end
