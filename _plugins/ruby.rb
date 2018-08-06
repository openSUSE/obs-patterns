# By monkey patching Object, Ruby helpers/methods which are not available in
# Jekyll do not cause errors when rendering examples containing those unavailable
# helpers/methods
class Object
  def current_page?(url)
    false
  end
end
