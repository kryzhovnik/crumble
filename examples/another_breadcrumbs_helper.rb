module AnotherBreadcrumbsHelper
  def crumbs
    list_items = (breadcrumb_trail || []).map{|crumb| "<li>#{crumb}</li>"}.join(delimiter)
    "<ul>#{list_items}</ul>"
  end
  
private
  def delimiter
    "<li>#{super}</li>"
  end
end
