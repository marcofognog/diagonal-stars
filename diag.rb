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
   n.times do |index|
     if pos == index || (index + pos) == (n - 1)
       char = '*'
     else
       char = '-'
     end

     line << char
   end
   line.join
end

def diag(n)
  str = []
  n.times do |index|
    str << doline(n, index)
  end
  str.join("\n") + "\n"
end

class DiagonalStar < Test::Unit::TestCase

  def test_first
    expected =<<END
*---*
-*-*-
--*--
-*-*-
*---*
END
    assert_equal(expected, diag(5))
  end

  def test_second
    expected =<<END
*--*
-**-
-**-
*--*
END
    assert_equal(expected, diag(4))
  end

  def test_third
    expected =<<END
*-*
-*-
*-*
END
    assert_equal(expected, diag(3))
  end
end
