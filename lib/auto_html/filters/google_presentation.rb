# encoding: UTF-8
AutoHtml.add_filter(:google_presentation).with(width: 420, height: 315, style: "color: #000; text-align: left") do |text, options|
  regex = /(https?):\/\/docs\.google\.([a-z\.]+)\/presentation\?(.*)/

  src = text
  src.gsub("/pub?", "/embed?")
  # For now, we're expecting that the text is only the link to the Google Presentation
  %{<iframe src="#{text}" frameborder="0" width="960" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>}
end
