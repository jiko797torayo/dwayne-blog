$(function() {
    $(".action-btn").on("click", function () {
        var c_id = gon.current_id;
        if(c_id != 1) {
            $(".dwayne").addClass("go");
            return false;
        }
    });
    $(".dwayne2").on("click", function () {
        $(".dwayne2").addClass("hide");
    });
});
