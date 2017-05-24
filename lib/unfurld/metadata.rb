module Unfurld
  class Metadata
    attr_accessor :title
    attr_accessor :url

    def initialize(url, opts = {})
      self.url         = url
      self.title       = opts[:title]
    end
  end
end
