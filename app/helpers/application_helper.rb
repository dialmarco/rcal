module ApplicationHelper
  def javascript(*files)
    puts "called #{files}"
    content_for(:head) { javascript_include_tag(*files) }
  end
end
