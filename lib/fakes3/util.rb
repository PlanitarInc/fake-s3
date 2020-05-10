module FakeS3
  module Util
    def Util.strip_before_and_after(string, q1, q2, q3)
      q1_re = Regexp.escape(q1)
      q2_re = Regexp.escape(q2)
      q3_re = Regexp.escape(q3)
      string
        .gsub(/\A[#{q1_re}]+|[#{q1_re}]+\z/, '')
        .gsub(/\A[#{q2_re}]+|[#{q2_re}]+\z/, '')
        .gsub(/\A[#{q3_re}]+|[#{q3_re}]+\z/, '')
    end
  end
end
