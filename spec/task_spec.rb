require('rspec')
require('task')
require('pry')

describe('Task') do
  before do
    Task.clear
  end

  describe('.clear') do
    it('empties the task list') do
      Task.new('clear the list').save
      Task.clear
      expect(Task.all).to(eq([]))
    end
  end

  describe('#description') do
    it('returns a description') do
      expect(Task.new('wash a zebra').description).to(eq('wash a zebra'))
    end
  end

  describe('#save') do
    it('saves a Task object') do
      task = Task.new('wash a zebra').save
      expect(Task.all).to(eq([task]))
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Task.all).to(eq([]))
    end

    it('returns an array of task objects') do
      task = Task.new('wash a zebra').save
      expect(Task.all).to(eq([task]))
    end

    it('returns an array of task objects when multiple exist') do
      task1 = Task.new('wash a zebra').save
      task2 = Task.new('pet a panda').save

      expect(Task.all).to(eq([task1, task2]))
    end
  end
end
