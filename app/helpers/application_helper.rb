module ApplicationHelper
  def title(title)
    content_for :title do
      title + " - "
    end
  end

  def js(*js)
    content_for :head do
      javascript_include_tag *js
    end
  end

  def css(*css)
    content_for :head do
      stylesheet_link_tag *css
    end
  end
end
