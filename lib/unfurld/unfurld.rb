module Unfurld
  def self.get_metadata(url)
    @client ||= Unfurld::Client.new(self.providers)

    @client.get_metadata(url)
  end

  private

  def self.providers
    [
      Unfurld::Providers::OEmbed.new(nil) # TODO: Inject HTTP
    ]
  end
end
