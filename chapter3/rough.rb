"Hello World".scan(/./) { |letter| print letter; sleep(0.5) }

varr = "Sed sit amet odio sit amet sapien tempor lobortis in quis mauris. Mauris lobortis mauris congue neque adipiscing in varius purus rhoncus. Morbi et lectus a urna pellentesque adipiscing ut sed metus. Aenean malesuada scelerisque interdum. Proin quis dictum turpis. Aliquam erat volutpat. Aliquam vitae ante non lorem imperdiet semper id sollicitudin magna. Nam semper ultricies suscipit. Nulla venenatis consequat dapibus. Curabitur non eros neque, vel feugiat ipsum."


varr.scan(/................./) { |match| puts match  }