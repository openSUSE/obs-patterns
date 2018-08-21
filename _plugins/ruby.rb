# By monkey patching Object, Ruby helpers/methods which are not available in
# Jekyll do not cause errors when rendering examples containing those unavailable
# helpers/methods
class Object
  def tab_link(label, url)
    html_class = 'active' if url == 'example3.com'
    "<a href='#{url}' class='nav-link #{html_class}'>#{label}</a>"
  end
end
