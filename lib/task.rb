class Task
  @@all_tasks = []
  define_singleton_method(:clear) do
    @@all_tasks = []
  end

  define_method(:initialize) do |description|
    @description = description
    @@all_tasks = [description]
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_tasks
  end

end
