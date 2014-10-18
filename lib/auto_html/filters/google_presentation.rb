# encoding: UTF-8
AutoHtml.add_filter(:google_presentation).with(width: 420, height: 315, style: "color: #000; text-align: left") do |text, options|
  regex = /(https?):\/\/docs\.google\.([a-z\.]+)\/presentation\?(.*)/

  src = text
  src = src.gsub("/pub?", "/embed?")
  width = options[:width]
  height = options[:height]

  # For now, we're expecting that the text is only the link to the Google Presentation
  %{<iframe src="#{src}" frameborder="0" width="#{width}" height="#{height}" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>}
end
