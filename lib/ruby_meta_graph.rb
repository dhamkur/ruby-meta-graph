require "faraday"
require "json"
require "ruby_meta_graph/me"

module RubyMetaGraph
  Faraday::NestedParamsEncoder.sort_params = false
  BASE_URL = "https://graph.facebook.com/v16.0/"

  def connect
    initial = Faraday.new(url: BASE_URL,
      request: {
        params_encoder: Faraday::NestedParamsEncoder
      }
    )

    return initial
  end
end
