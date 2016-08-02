
<div class="row">


    <sec:ifNotLoggedIn>

        <div class="panel panel-default">
            <div class="panel-heading">
                Sign in
            </div>
            <div class="panel-body">
                <g:form uri="/login/authenticate" method="post" accept-charset="UTF-8">
                    <div class="form-group">
                        <label>Username</label>
                        <input id="username" name="username" type="text" autocomplete="off" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input id="password" name="password" type="password" autocomplete="off" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"  id="RememberMe" value="option1"> Remember me
                            </label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success">Login</button>


                    <g:link controller="signup" action="index">Register</g:link>
                    <a href="#">register</a>&nbsp;|&nbsp;<a href="#">forgot password?</a>
                    <g:link controller="auth" action="resetPassword">Forgot password?</g:link>
                </g:form>

            </div>
        </div>
    </sec:ifNotLoggedIn>

    <div class="panel panel-default">
        <div class="panel-heading">
            Categories
        </div>
        <div class="list-group">
            <a href="#" class="list-group-item">Category 1 <span class="badge">0</span></a>
            <a href="#" class="list-group-item">Category 2 <span class="badge">0</span></a>
            <a href="#" class="list-group-item">Category 3 <span class="badge">0</span></a>
            <a href="#" class="list-group-item">Category 4 <span class="badge">0</span></a>
            <a href="#" class="list-group-item">Category 5 <span class="badge">0</span></a>
        </div>
    </div>


    <%--
    <div class="panel panel-default">

        <div class="panel-heading">
            Filters
        </div>
        <div class="panel-body">
            <form>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value=""> Filter 1
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value=""> Filter 2
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value=""> Filter 3
                        </label>
                    </div>
                </div>


                <button class="btn btn-primary pull-right" type="submit">Filter</button>
            </form>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            Sort by
        </div>
        <div class="panel-body">
            <form lpformnum="2">
                <div class="form-group">
                    <div class="radio">
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                            Sort 1
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="radio">
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                            Sort 2
                        </label>
                    </div>
                </div>
                <button class="btn btn-primary pull-right" type="submit">Sort</button>
            </form>
        </div>
    </div>
    --%>


</div>
