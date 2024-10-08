<section class="hostiko-banner-whmcs">
    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            <h1 class="title-heading">{$pagetitle}</h1>
            <p class="title-text">Our shared service delivers a powerful, proven platform that’s perfect for hosting your websites.</p>
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>
    {literal}
        <script type="text/javascript">
            const queryParams = new URLSearchParams(window.location.search);
            var page_login_temp= queryParams.get('rp');
            var login_word = window.location.href.includes("login");
            var is_404 = document.title.includes('404');
            if(page_login_temp == '/login' || login_word){
                $(".breadcrumb").append('<li class="breadcrumb-item active" aria-current="page">Login</li>')
            }
            if(is_404){
                $(".breadcrumb").append('<li class="breadcrumb-item active" aria-current="page">Page Not Found</li>')
            }
        </script>
    {/literal}
</section>