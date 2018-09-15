$(function() {
    $(".action-btn").on("click", function () {
        var c_u_id = gon.current_user_id;
        if(c_u_id != 1) {
            $(".dwayne1").addClass("go");
            return false;
        }
    });
    $(".dwayne2").on("click", function () {
        $(".dwayne2").addClass("hide");
    });
});
