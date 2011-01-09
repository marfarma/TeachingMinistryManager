module ApplicationHelper
  def title(page_title, show_title = true)
    @show_title = show_title
    content_for(:title) { page_title.to_s }
  end

  def show_title?
    @show_title
  end
  
  def logo
    logo = image_tag("logo.png", :alt => "Sample App", :class => "round")
    link_to logo, root_path
  end
  
  # Return a title on a per-page basis.
#  def title
#    base_title = "Teaching Ministry Manager - Proposed OneBody Enhancement"
#    if @title.nil?
#      base_title
#    else
#      "#{base_title} | #{@title}"
#    end
#  end
  
end
