<html>
  <head>
    <title>The Gossip Project</title>
  </head>
  <body>
    <h1>Mon super site de gossip, les gossips arrivent bientot !</h1>
  <a href="/gossips/new/">tu peux aller créer ton potin ici</a>
    </body>
</html>

<% gossips.each do |gossip| %> # % permet d'exécuter du ruby dans un fichier html
        <p>
          <%= gossip.author %><br/>
          <%= gossip.content %>
        </p>
      <% end %>