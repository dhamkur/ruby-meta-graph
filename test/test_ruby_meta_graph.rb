require "minitest/autorun"
require "ruby_meta_graph"
require "dotenv/load"

class TestRubyMetaGraph < Minitest::Test
  include RubyMetaGraph

  def setup
    @url = "https://graph.facebook.com/v16.0/"
    @fields = "id,email,name"
    @access = ENV["TOKEN"]
  end

  def test_base_url
    assert_equal @url, RubyMetaGraph::BASE_URL
  end

  def test_connect
    statuses = [200, 400, 401]
    response = connect.get(
      "me", {
        fields: @fields,
        access_token: @access
      }
    )

    if statuses.include?(response.status)
      assert true, "Connect success to make request"
    else
      assert false, "Connect failed to make request"
    end
  end

  def test_me
    response = RubyMetaGraph::Me.new(
      @fields, @access
    ).run

    case
    when response.error.nil?
      assert true, "Success"
    when !@access.empty?
      assert true, "Success request. However, the token is empty!"
    else
      assert false, "Error"
    end
  end
end
