module FakeS3
  module Util
    def Util.strip_etag(string)
      dq_re = Regexp.escape('"')
      string
        .gsub(/&quot;/, '"')
        .gsub(/&#34;/, '"')
        .gsub(/\A[#{dq_re}]+|[#{dq_re}]+\z/, '')
    end
  end
end
