// before login or registration
const rootpath = window.location.origin;

const signup = `${rootpath}/pages/login/Signup.html`;
const login = `${rootpath}/jauntyrialtoweb/login.jsp`;

// after login or registration
const logo1 = `${rootpath}index.jsp`;

const myportal = `${rootpath}/pages/cart/profile.html`;
const order = `${rootpath}/pages/cart/order.html`;
const wishlist = `${rootpath}/pages/cart/wishlist.html`;
const notification = `${rootpath}/pages/cart/notification.html`;

const sell = `${rootpath}/pages/admin/admindex.html`;
// let customcare = rootpath + "/";
// let ads = rootpath + "/";
// let app = rootpath + "/";

const h_cart = `${rootpath}/pages/cart/cart.html`;

const beforelog = `<div id="hf" class="header-left">
        <a href="${logo1}">JAUNTY</a>  
    <div class="header-left-p">
         <p><a href="${logo1}"> RIALTO</a></p>
    </div>
</div>
    <div class="login">
        <a href="${signup}" class="login_btn">SignUp</a>
        <a href="${login}" class="more_lan">Login</a>
    </div>`;

const afterlog = `<div class="header-left">
        <a href="${logo1}">JAUNTY</a>  
    <div class="header-left-p">
        <p><a href="${logo1}"> RIALTO</a></p>
    </div>
</div>
<div class="header-center"> 
    <input class="header-center-input" type="text" placeholder="search for products"><i class="fa-solid fa-magnifying-glass" ></i>
</div>

<!-----Login Button----->

<div class="login">
    <p class="login_btn">My Portal</p>
    <div class="login_dropdown none">
        <ul class="login_dropdown_list">
            <li class="login_drop_li"><i class="fa-solid fa-user"></i><a href="${myportal}">My Profile</a></li>
            <li class="login_drop_li"><i class="fa-solid fa-bag-shopping"></i> <a href="${order}" >Order</a></li>
            <li class="login_drop_li"><i class="fa-solid fa-heart"></i> <a href="${wishlist}" >Wishlist</a></li>
            <li class="login_drop_li"><i class="more-icon fa fa-bell"></i> <a href="${notification}" >Notification</a></li>
        </ul>
    </div>
</div>

<!-----more details----->

<div class="more">
    <p class="more_lan">More</p>
 <div class="more_dropdown none">
    <ul class="more_dropdown_list">
        <li class="login_drop_li"><i class="more-icon fa fa-shopping-basket"></i><a href="${sell}">Sell on JR</a></li>
        <li class="login_drop_li"><i class="more-icon fa fa-phone"></i>24x7 customer Care</li>
        <li class="login_drop_li"><i class="more-icon fa fa-line-chart"></i>Advertise</li>
        <li class="login_drop_li"><i class="more-icon fa fa-download"></i>Download App</li>
    </ul>
 </div>
</div>

<!-- ---cart details--- -->

<span class="cart_lan"><a href="${h_cart}"><i class="fa-solid fa-cart-shopping"></i></a></span>`;

// function of header
function header() {
        const uid = JSON.parse(localStorage.getItem("user_data"));
        const userlogin = document.getElementById("hed");

        if (!uid) {
                userlogin.innerHTML = beforelog;
        } else {
                userlogin.innerHTML = afterlog;
        }
}

// linking the script for HTML

header();
