class Riddler
  def initialize(a1, a2, a3)
    @answer1 = a1
    @answer2 = a2
    @answer3 = a3
  end

  def is_answer?
    @answer1 == "human" && @answer2 == "reflection" && @answer3 == "palindrome"
  end
end
