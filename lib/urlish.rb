require "urlish/version"
require "urlish/model_additions"
require "urlish/railtie" if defined? Rails

module Urlish
  def self.format_url(url)
    if url.to_s !~ url_regexp && "http://#{url}" =~ url_regexp
      "http://#{url}"
    else
      url
    end
  end

  def self.url_regexp
    /^https?:\/\/([^\s:@]+:[^\s:@]*@)?[-[[:alnum:]]]+(\.[-[[:alnum:]]]+)+\.?(:\d{1,5})?([\/?]\S*)?$/iux
  end
end
