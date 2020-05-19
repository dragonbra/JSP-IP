
function logout() {

    $.ajax({
        type:"post",
        url:"LogoutServlet",
        success: function () {
            location.href="./index.jsp";
        }
    });
}

