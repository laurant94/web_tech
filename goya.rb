require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['goya'].split(",")
  goyas = "";

  get.each do |goya|
    goyas += "<p>#{goya}</p>"
  end

  "<html>
    <body>
      <p>Liste des Goya</p>
      #{goyas}
    </body>
  </html>"
}