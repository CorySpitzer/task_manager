require('rspec')
require('task')

describe('Task') do
  describe('#description') do
    it('returns a description') do
      expect(Task.new('wash a zebra')).to(eq('wash a zebra'))
    end
  end
end
