
function remote_button () {
    send_key($(this).val());
}

function remote_key (event) {
    send_key(event.which);
}

function send_key (keycode) {
    //var s = String.fromCharCode(keycode)
    $.ajax("cgi-bin/receiver.cgi?" + keycode, {
        complete: function () {
            $("#keybug").css("color", "green");
        }
    });
    $("#keybug").text(keycode).css("color", "red");
}

$(document).ready(function () {
    $("button.remote").click(remote_button);
    $(window).keypress(remote_key);
});

