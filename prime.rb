module PrimeNumberChecker
  def self.check(n)
    if (n % 2) == 0
      return false
    end

    rt = Math.sqrt(n)

    3.step(rt, 2) do |iter|
      if (n % iter) == 0
        return false
      end
    end

    return true
  end
end

x = 1000000000000

while true
  if PrimeNumberChecker.check(x)
    puts x
    break
  end

  x += 1
end
