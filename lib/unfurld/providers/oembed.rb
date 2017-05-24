module Unfurld
  module Providers
    class OEmbed
      attr_accessor :http_client

      def initialize(http_client)
        self.http_client = http_client # TODO: Actually use this!

        ::OEmbed::Providers.register_all
      end

      def get_metadata(url)
        begin
          resource = ::OEmbed::Providers.get(url)
        rescue ::OEmbed::NotFound
          return nil
        end

        return nil if resource.nil?

        return Unfurld::Metadata.new(url, title: resource.title)
      end
    end
  end
end
