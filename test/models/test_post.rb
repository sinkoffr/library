require 'test_helper'

class Testpost < Minitest::Test
    def test_create
        @post = Post.create!(title: "Hello World")
        assert_equal Post.last.title, @post.title
    end
end
