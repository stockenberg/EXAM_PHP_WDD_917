<p><?= \sae\app\helpers\StatusLog::read('login') ?? '' ?></p>

<div class="container">
    <div class="card card-container">
        <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
        <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <form class="form-signin" action="?p=login&action=login" method="post">
            <span id="reauth-email" class="reauth-email"></span>
            <input type="text" id="inputEmail" name="username" class="form-control" placeholder="username" required autofocus>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
            <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
        </form><!-- /form -->

    </div><!-- /card-container -->
</div><!-- /container -->