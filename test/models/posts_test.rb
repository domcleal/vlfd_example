require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'maximum test field length' do
    p = Post.new test: ('a' * 12)
    refute p.save
    assert_equal ['is too long (maximum is 10 characters)'], p.errors[:test]
  end
end
