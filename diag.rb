# n = 5

# *---*
# -*-*-
# --*--
# -*-*-
# *---*

# n = 2
# **
# **

# n = 1
# *


# n = 4
# *--*
# -**-
# -**-
# *--*


# n = 3
# *-*
# -*-

require 'test/unit'

def doline(n, pos)
   line = []
   n.times do
     char = '-'
     line << char
   end
   line.join
end

def diag(n)
  str = []
  n.times do
    str << doline(n, 0)
  end
  str.join("\n") + "\n"
end

class DiagonalStar < Test::Unit::TestCase

  def test_first
    expected =<<END
-----
-----
-----
-----
-----
END
    assert_equal(expected, diag(5))
  end

end
