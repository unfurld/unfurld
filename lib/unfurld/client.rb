module Unfurld
  class Client
    attr_accessor :providers

    def initialize(providers)
      self.providers = providers
    end

    def get_metadata(url)
      providers.each {|provider|
        metadata = provider.get_metadata(url)

        return metadata if metadata
      }

      return nil
    end
  end
end
