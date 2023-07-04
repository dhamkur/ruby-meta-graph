module RubyMetaGraph
  class Me
    include RubyMetaGraph

    def initialize(fields, access)
      @fields = fields
      @access = access
    end
  
    def run
      response = connect.get(
        "me", {
          fields: @fields,
          access_token: @access
        }
      )
  
      return JSON.parse(response.body, object_class: OpenStruct)
    end
  end
end
