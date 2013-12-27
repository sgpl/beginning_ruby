# example of how to create blocks.

def some_html(&block)
	puts "<html>"
	puts "	<body>"
		yield
	puts "	</body>"
	puts "</html>"
end


def paragraph(text)
	puts "\t\t<p>" + text + "</p>"
end

def bold(text)
	puts "\t\t<b>" + text + "</b>"
end


some_html do
	paragraph("hello world") 
	bold("some other text")
end
