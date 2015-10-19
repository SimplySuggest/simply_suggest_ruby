module SimplySuggest
  class Configuration
    # SimplySuggest publicKey
    #
    # default: nil
    attr_accessor :public_key

    # SimplySuggest secretKey
    #
    # default: nil
    attr_accessor :secret_key

    # Read Timeout
    #
    # default: 2
    attr_accessor :timeout

    # Api Version
    #
    # default: v1
    attr_accessor :api_version

    # Api Domain
    #
    # default: simply-suggest.com
    attr_accessor :api_domain

    def initialize
      @secret_key  = nil
      @public_key  = nil
      @timeout     = 2
      @api_version = "v1"
      @api_domain  = "http://v1.simply-suggest.com"
    end
  end

  class << self
    def configure
      @config ||= Configuration.new
      yield @config
    end

    def config
      @config ||= Configuration.new
    end
  end
end