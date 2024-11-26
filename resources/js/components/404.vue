<template>
    <section class="page_404">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 ">
                    <div class="col-sm-10 col-sm-offset-1  text-center">
                        <div class="four_zero_four_bg">
                            <h1 class="text-center ">404</h1>
                        </div>
                        <div class="contant_box_404">
                            <h3 class="h2">
                                Look like you're lost
                            </h3>
                            <p>the page you are looking for not avaible!</p>
                            <a href="/" class="link_404">Go to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
export default {
    mounted() {
        document.querySelector('.tj-header-area.header-absolute').style.backgroundColor = "#0f0715"
    },
    unmounted() {
        document.querySelector('.tj-header-area.header-absolute').style.backgroundColor = "trasnparent"
    }
}
</script>
<style scoped>
.page_404 {
    padding: 140px 0;
    background: #fff;
    font-family: 'Arvo', serif;
}

.page_404 img {
    width: 100%;
}

.four_zero_four_bg {

    background-image: url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif);
    height: 400px;
    background-position: center;
}


.four_zero_four_bg h1 {
    font-size: 80px;
    color: #834df0;
}

.four_zero_four_bg h3 {
    font-size: 80px;
}

.row .col-sm-12 {
    display: flex;
    justify-content: center;
}

.link_404 {
    color: #fff !important;
    padding: 10px 20px;
    background-color: #834df0;
    text-decoration: none;
    border-radius: 20px;
    margin: 20px 0;
    display: inline-block;
}

.contant_box_404 {
    margin-top: -50px;
}
</style>