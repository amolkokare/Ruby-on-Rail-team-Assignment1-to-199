Chat: <span id=" chat"></span>
<hr>
Message:
<br>
<textarea id="msg" style="width:280px; height: 80px;"></textarea>
<hr>
<button id="send">Send Message</button>

<script>
  $(document).ready(function(){
      $("send").click(function(){
        msg = $("msg").val()
        alert(msg)
      })
  })
  </script>
