require('rspec')
require('task')

describe('Task') do
  before do
    Task.clear
  end

  describe('#description') do
    it('returns a description') do
      expect(Task.new('wash a zebra').description).to(eq('wash a zebra'))
    end
  end

  describe('.all') do
    it('returns an array of task objects') do
      task = Task.new('wash a zebra')
      expect(Task.all).to(eq(['wash a zebra']))
    end

    it('returns an empty array at first') do
      expect(Task.all).to(eq([]))
    end
  end
end
