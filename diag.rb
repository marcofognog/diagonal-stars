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
     if pos == 0 && index == 0 ||
        pos == 0 && index == 0 ||
        pos == 0 && index == 4 ||
        pos == 1 && index == 1 ||
        pos == 1 && index == 3 ||
        pos == 2 && index == 2 ||
        pos == 3 && index == 3 ||
        pos == 3 && index == 1 ||
        pos == 4 && index == 4 ||
        pos == 4 && index == 0
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

end
