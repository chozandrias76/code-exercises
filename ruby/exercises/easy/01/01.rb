require 'debug'
def find_lonely_integer(array)
  lonely = 0
  array.each do |elm|
    lonely ^= (elm.negative?  ? elm * -1 : elm )
  end
  lonely
end