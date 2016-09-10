module SheetsHelper
  def sort_link(column, title = nil, tag = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    icon = column == sort_column ? icon : ""
    if !tag.nil?
      link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction, tag: tag[:tag]}
    else
      link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
    end
  end
end
