require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['false-goya'].split(",")
  goyas = "";

  get.each do |goya|
    goyas += "<p>#{goya}</p></br>"
  end

  "<html>
    <body>
      <p>Liste des mauvais Goya</p>
      #{goyas}
    </body>
  </html>"
}