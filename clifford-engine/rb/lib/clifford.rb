class Clifford
  def run(instruction)
    instruction = instruction.split(' ')
    stack = []

    while instruction.length > 0
      if instruction.shift == '0'
        result << instruction.shift
      end
    end

    stack.pop
  end
end
