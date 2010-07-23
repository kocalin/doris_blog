atom_feed do |feed|
    feed.title("My first test blog")
    feed.update(@posts.first.created_at)

    @posts.each do |post|
	feed.entry(post) do |entry|
	    entry.title(post.title)
	    entry.content(post.body, :type=>'html')
	    entry.author{ |author| author.name("Doris Lin")}
	end
    end
end
