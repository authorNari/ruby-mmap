#:nodoc:all
begin
   require 'test/unit'
end


if RUBY_VERSION > "1.7"
   class Array
      alias indices select
   end
   class Hash
      alias indexes select
   end
   module BDB
      class Common
	 alias indexes select
      end

      class Recnum
	 alias indices select
      end
   end
end
