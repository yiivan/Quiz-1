module HelperMethods
  def testing(class_name)
    puts "Yeah! This works for #{class_name}!"
  end
end

class MyInclude
  include HelperMethods
end

class MyExtend
  extend HelperMethods
end

#These will work:
inc = MyInclude.new
inc.testing("MyInclude")

MyExtend.testing("MyExtend")

# These will not work:
# MyInclude.testing("MyInclude")
#
# inc = MyExtend.new
# inc.testing("MyExtend")
