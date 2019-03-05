<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Index - {{.Name}}</title>
    <link rel="stylesheet" href="/Caddyr/style.css" />
    <style>
      @font-face
      { 
        font-family: "VT220"; 
        src: url("/retro-browse/Glass_TTY_VT220.ttf"); 
      }

      .size
      {
        text-align: right;
      }

      thead
      {
        text-align: left;
      }

      td
      {
        padding-right: 2vw;
      }

      body
      {
        font-family: "VT220";
        font-size: 2vw;
        background-color: #000000;
        color: #00d009;
      }

      a:link
      {
        color: blue;
      }

      a:visited
      {
        color: red;
      }
    </style>
  </head>
  <body>
    <h1>{{.Path}}</h1>
    <center>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Last modified</th>
            <th>Size</th>
          </tr>
        </thead>
        <tbody>
          {{if .CanGoUp}}
            <tr>
              <td>
                <a href="..">..</a>
              </td>
              <td></td>
              <td></td>
            </tr>
          {{end}}

          {{range .Items}}
            <tr>
              <td>
                {{if .IsDir}}
                  <img src="/retro-browse/dir.png"></a>
                {{else}}
                  <img src="/retro-browse/file.png"></a>
                {{end}}
                <a href="{{.URL}}">{{.Name}}</a>
              </td>
              <td><script>var x = '{{.ModTime}}'; document.write(x.substr(0, 19));</script></td>
              {{if .IsDir}}
                <td></td>
              {{else}}
                <td class="size">{{.Size}}</td>
              {{end}}
            </tr>
          {{end}}
        </tbody>
      </table>
    </center>
  </body>
  <footer>
    <a href="https://github.com/wille-io/retro-browse">retro-browse</a>
  </footer>
</html>
