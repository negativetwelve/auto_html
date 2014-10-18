# encoding: UTF-8
AutoHtml.add_filter(:google_presentation).with(width: 420, height: 315, style: "color: #000; text-align: left") do |text, options|
  regex = /(https?):\/\/docs\.google\.([a-z\.]+)\/presentation\?(.*)/
  text.gsub(regex) do
    %{<iframe src="#{src}" frameborder="0" width="960" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>}
  end
end
