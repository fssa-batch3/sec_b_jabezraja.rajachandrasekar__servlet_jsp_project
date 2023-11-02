<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Site</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/images/logo4.jpg"
	type="image/x-icon">
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">
<!-- SweetAlert CSS For SWAL-->
<link rel="stylesheet"
	href="https://unpkg.com/sweetalert/dist/sweetalert.css">
<!-- SweetAlert JS For SWAL-->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<jsp:include page="/header.jsp"></jsp:include>
<body class="body">

    <div class="headpic">
        <img src="<%=request.getContextPath()%>/assets/images/banner/cart.png" alt="">
    </div>
    <div class="head1">Payment</div>
    <div class="head2">OPTIONS</div>
    <main>
        <div class="mainbox">
            <div class="pr1">
                <div class="st">
                    <input type="radio" name="yes_no">
                    <label> UPI </label>
                </div>
                <div>
                    <img class="sti" src="<%=request.getContextPath()%>/assets/images/gif/UPI.gif" alt="" height="24px" width="24px">
                </div>
            </div>
            <div class="stin">
                <input class="cofd" type="text" placeholder="ENTER UPI ID" required>
            </div>

            <div class="pr2">
                <div class="st">
                    <input type="radio" name="yes_no">
                    <label> CREDIT/DEBIT/ATM CARD </label>
                </div>
            </div>
            <div class="stin">
                <input class="cofd" type="text" placeholder="ENTER CARD NUMBER" required>
            </div>
            <div class=" myc">
                <div>
                    <span class="smm1">
                        <select class="mmyy" name="month" required>
                            <option value="MM">MM</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </span>
                    <span class="smm2">
                        <select class="mmyy" name="year" required>
                            <option value="YY">YY</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                            <option value="32">32</option>
                            <option value="33">33</option>
                            <option value="34">34</option>
                            <option value="35">35</option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                            <option value="40">40</option>
                        </select>
                    </span>
                </div>
                <div>
                    <input class="mmyy" type="password" placeholder="CVV" required>
                </div>
            </div>

            <div class="pr3">
                <div class="st">
                    <input type="radio" name="yes_no">
                    <label> NET BANKING </label>
                </div>
                <p id="nbp">Popular Banks</p>
                <div class="pbr">
                    <div class="pr1">
                        <input id="ibk1" type="radio" name="yes_no">
                        <div>
                            <img src="<%=request.getContextPath()%>/assets/images/bank/hdfc.svg" alt="" height="24px" width="24px">
                        </div>
                        <div id="bkn">
                            <label> HDFC BANK </label>
                        </div>

                    </div>

                    <div class="pr1">
                        <input id="ibk" type="radio" name="yes_no">
                        <div>
                            <img src="<%=request.getContextPath()%>/assets/images/bank/icici.svg" alt="" height="24px" width="24px">
                        </div>
                        <div id="bkn">
                            <label> ICICI BANK </label>
                        </div>

                    </div>

                    <div class="pr1">
                        <input id="ibk" type="radio" name="yes_no">
                        <div>
                            <img src="<%=request.getContextPath()%>/assets/images/bank/sbi.svg" alt="" height="24px" width="24px">
                        </div>
                        <div id="bkn">
                            <label> STATE BANK OF INDIA </label>
                        </div>

                    </div>
                </div>

                <div id="pbr" class="pbr">
                    <div class="pr1">
                        <input id="ibk1" type="radio" name="yes_no">
                        <div>
                            <img src="<%=request.getContextPath()%>/assets/images/bank/axis.svg" alt="" height="24px" width="24px">
                        </div>
                        <div id="bkn">
                            <label> AXIS BANK </label>
                        </div>

                    </div>
                    <div class="pr1">
                        <input id="ibk" type="radio" name="yes_no">
                        <div>
                            <img src="<%=request.getContextPath()%>/assets/images/bank/kmb.svg" alt="" height="24px" width="24px">
                        </div>
                        <div id="bkn">
                            <label> KOTAK MAHINDRA BANK </label>
                        </div>

                    </div>
                </div>

                <div class="st">
                    <p>OTHER BANKS</p>
                </div>
                <div>
                    <select id="obop" class="cofd" required>
                        <option value="SELECT_BANK">---Select Bank---</option>
                        <option value="AIRTELMONEY">Airtel Payments Bank</option>
                        <option value="AUSMALLFINBANK">AU Small Finance Bank</option>
                        <option value="BANDHAN">Bandhan Bank</option>
                        <option value="BASSIENCATHOLICCOOPB">Bassien Catholic Co-Operative Bank</option>
                        <option value="BNPPARIBAS">BNP Paribas</option>
                        <option value="BOBAHRAIN">Bank of Bahrain and Kuwait</option>
                        <option value="BOBARODA">Bank of Baroda</option>
                        <option value="BOBARODAC">Bank of Baroda Corporate</option>
                        <option value="BOBARODAR">Bank of Baroda Retail</option>
                        <option value="BOI">Bank of India</option>
                        <option value="BOM">Bank of Maharashtra</option>
                        <option value="CANARA">Canara Bank</option>
                        <option value="CATHOLICSYRIAN">Catholic Syrian Bank</option>
                        <option value="CBI">Central Bank</option>
                        <option value="CITYUNION">City Union Bank</option>
                        <option value="CORPORATION">Corporation Bank</option>
                        <option value="COSMOS">Cosmos Co-op Bank</option>
                        <option value="DBS">digibank by DBS</option>
                        <option value="DCB">DCB BANK LTD</option>
                        <option value="DENA">Dena Bank</option>
                        <option value="DEUTSCHE">Deutsche Bank</option>
                        <option value="DHANBANK">Dhanalakshmi Bank</option>
                        <option value="FEDERALBANK">Federal Bank</option>
                        <option value="HSBC">HSBC</option>
                        <option value="IDBI">IDBI Bank</option>
                        <option value="IDFC">IDFC FIRST Bank</option>
                        <option value="INDIANBANK">Indian Bank</option>
                        <option value="INDUSIND">IndusInd Bank</option>
                        <option value="IOB">Indian Overseas Bank</option>
                        <option value="JANATABANKPUNE">JANATA SAHAKARI BANK LTD PUNE</option>
                        <option value="JKBANK">J&amp;K Bank</option>
                        <option value="KARNATAKA">Karnataka Bank</option>
                        <option value="KARURVYSYA">Karur Vysya Bank</option>
                        <option value="LAKSHMIVILAS">Lakshmi Vilas Bank - Retail</option>
                        <option value="LAKSHMIVILASC">Lakshmi Vilas Bank - Corporate</option>
                        <option value="PNB">Punjab National Bank</option>
                        <option value="PNBC">Punjab National Bank Corporate</option>
                        <option value="PNSB">Punjab &amp; Sind Bank</option>
                        <option value="PUNJABMAHA">Punjab &amp; Maharashtra Co-op Bank</option>
                        <option value="RATNAKAR">RBL Bank Limited</option>
                        <option value="RBS">RBS</option>
                        <option value="SARASWAT">Saraswat Co-op Bank</option>
                        <option value="SHAMRAOVITHAL">Shamrao Vithal Co-op Bank</option>
                        <option value="SHIVAMERCOOP">Shivalik Mercantile Co-op Bank</option>
                        <option value="SOUTHINDIAN">The South Indian Bank</option>
                        <option value="STANC">Standard Chartered Bank</option>
                        <option value="TMBANK">Tamilnad Mercantile Bank Limited</option>
                        <option value="TNMERCANTILE">Tamil Nadu Merchantile Bank</option>
                        <option value="TNSC">TNSC Bank</option>
                        <option value="UCO">UCO Bank</option>
                        <option value="UNIONBANK">Union Bank of India</option>
                        <option value="YESBANK">Yes Bank</option>
                        <option value="ZOROACOPBANK">The Zoroastrian Co-Operative Bank</option>
                    </select>
                </div>

            </div>
            <div class="pr1">
                <div class="st">
                    <input type="radio" name="yes_no">
                    <label> CASH ON DELIVERY </label>
                </div>
            </div>

            <div class="cobtn" id="pbtn">
                <a href="<%=request.getContextPath()%>/index" class="sd" id="pcb" onclick="showEditConfirmation(); return false;">CONFIRM</a>
                <a href="#" class="ca" id="pcab">CANCEL</a>
            </div>
        </div>
    </main>
</body>
<script>
function showEditConfirmation() {
    swal({
        title: "Payment Confirmation",
        text: "Are you sure?",
        icon: "warning",
        buttons: {
            confirm: {
                text: "Proceed",
                value: true,
                visible: true,
                className: "btn-confirm",
                closeModal: true
            },
            cancel: "Cancel"
        }
    })
    .then((willEdit) => {
        if (willEdit) {
            window.location.href = "<%=request.getContextPath()%>/index";
        }
    });
}
</script>
</html>