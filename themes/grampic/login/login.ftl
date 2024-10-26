<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Grampic</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
</head>
<body>
    <div class="login-container">
        <div class="logo">
            <img src="${url.resourcesPath}/img/logo.png" alt="Grampic">
        </div>
        <h1 class="title">Grampic</h1>
        <form action="${url.loginAction}" method="post">
            <div class="input-field">
                <input type="text" name="username" placeholder="Usuário" autofocus>
            </div>
            <div class="input-field">
                <input type="password" name="password" placeholder="Senha">
            </div>
         <div class="submit-button">
                <input type="submit" value="Entrar">
            </div>
            <div class="forgot-password">
                <a href="${url.loginResetCredentialsUrl}">Esqueci minha senha</a>
            </div>

        </form>

        <div class="social-login">
            <!-- Verifica se o login com Google está configurado -->
            <#if realm.identityProviders?has_content && realm.identityProviders["google"]??>
                <a href="${url.identityProviderUrl('google')}">
                    <img src="${url.resourcesPath}/img/google-logo.png" alt="Login com Google" class="social-icon">
                    Login com Google
                </a>
            </#if>

            <!-- Verifica se o login com Apple está configurado -->
            <#if realm.identityProviders?has_content && realm.identityProviders["apple"]??>
                <a href="${url.identityProviderUrl('apple')}">
                    <img src="${url.resourcesPath}/img/apple-logo.png" alt="Login com Apple" class="social-icon">
                    Login com Apple
                </a>
            </#if>
        </div>
    </div>
</body>
</html>

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
