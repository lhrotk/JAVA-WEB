<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>sign_up</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="shortcut icon" href="../images/favicon.ico">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/fonts/fontello/css/fontello.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/rs-plugin/css/settings.css"
	media="screen" rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/rs-plugin/css/extralayers.css"
	media="screen" rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/magnific-popup/magnific-popup.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/animations.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/plugins/owl-carousel/owl.carousel.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/skins/green.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/custom.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/checkinput.js">
	
</script>
<style>
.col-center-block {
	float: none;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>

<body class="front" style="background-color:black">

	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- page wrapper start -->
	<!-- ================ -->
	<div class="page-wrapper ">

		<!-- header-top start -->
		<!-- ================ -->
		<%@include file="../common/header-top.jsp"%>
		<%@include file="../common/header-fixed.jsp"%>
		<div class="main">
		<h3 class="text-center">注&nbsp册</h3>
		<form method="post"
			action="${pageContext.request.contextPath }/action/regist.action"
			id="f">
			<div class="form-group col-md-4 col-center-block" title="请输入您的邮箱">
				<input type="email" name="email" class="form-control" id="txtEmail"
					placeholder="请输入您的邮箱">
			</div>

			<div class="form-group col-md-4 col-center-block" title="请输入您的昵称">
				<input type="text" name="nickname" class="form-control"
					id="txtNickName" placeholder="该怎么称呼您">
			</div>
			<div class="form-group col-md-4 col-center-block"
				title="请输入一个不少于６位的密码">
				<input type="password" name="password" class="form-control"
					id="txtPassword" placeholder="请输入一个不少于６位的密码">
			</div>
			<div class="form-group col-md-4 col-center-block" title="请再次输入密码">
				<input type="password" name="password2" class="form-control"
					id="txtRepeatPass" placeholder="再次输入密码">
			</div>

			<div class="form-group col-md-4 col-center-block"
				title="请填写您的常用移动电话号码">
				<input type="text" name="phone" class="form-control"
					id="txtPhone" placeholder="请填写您的常用移动电话号码（选填）">
			</div>
			<div class="form-group col-md-4 col-center-block" title="请填写您的微信号">
				<input type="text" name="wechat" class="form-control"
					id="txtWechat" placeholder="请填写您的微信号（选填）">
			</div>
			<div class="form-group col-md-4 col-center-block"
				style="height: 34px;">
				<div style="width: 70%; float: left; display: inline;"
					title="请输入图中验证码">
					<input name="code_text" type="text" placeholder="请输入图中验证码"
						style="width: 100%" id="code_text" class="form-control" />
				</div>
				<div id="change"
					style="width: 30%; float: left; display: inline; background-color: #c1c1c1;">
					<a><img id="code" style="margin: 0 auto" src="imagecode.action" /></a>
				</div>


			</div>


			<div class="form-group checkbox col-md-4 col-center-block">
				<div style="width: 50%; float: left; display: inline;">

					<input type="radio" name="sex" value="male" checked>男</input>
				</div>
				<div style="width: 50%; float: left; display: inline;">
					<input type="radio" name="sex" value="female">女</input>
				</div>
			</div>

			<div class="form-group checkbox col-center-block col-md-4">
				<div>
					&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="agree"
						value="agreed">我已阅读并同意<a data-toggle="modal"
						data-target=".agreement">服务条款</a>

						<div class="modal fade agreement" tabindex="-1" role="dialog"
							aria-labelledby="myLargeModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>
										<h4 class="modal-title" id="myLargeModalLabel">服务与条款</h4>
									</div>
									<div class="modal-body">
										<p>一【授权使用原则】
											u tutor网站的各项网络服务的所有权和运作权归u tutor网站所有。用户必须如实完成注册程序，并完全同意utuor网站的各项章程、服务条款和操作规则，才能成为u tutor网站的正式用户，且仅限用户本人。
											</p>二<p>【服务说明】
											1、u tutor网站运用自己的操作系统通过国际互联网为用户提供网络服务； 
											2、u tutor网站提供的各项网络服务，包括今后增加或增强的新功能及新产品，均受本服务条款的约束； 
											3、用户必须自行提供与国际互联网连线所需的一切必要设备，包括计算机、调制解调器及其他必备上网装置，并自行支付相关服务费用。</p>
											<p>三【账号获取】
											1、您可通过在u tutor网站注册来获取u tutor账号。
											2、 您完成申请注册程序后，依照u tutor的业务规则获得该账号的使用权。
											3、 无论您通过何种方式获取u tutor账号，均受本规则约束。</p>
<p>四【用户身份信息验证】
1、 您在申请账号过程中，需要填写一些必要的信息，请保持这些信息的及时更新，以便u tutor向您提供帮助，或更好地为您提供服务。若您填写的信息不完整或不准确，则可能无法使用服务或在使用过程中受到限制。
2、 u tutor与用户一同致力于个人信息的保护，保护用户个人信息是u tutor的一项基本原则。未经您的同意，u tutor不会向u tutor以外的任何公司、组织和个人披露您的个人信息，但法律法规另有规定的除外。</p>
<p>五【账号的使用】
1、 您可以按照u tutor的业务规则用u tutor账号登录和使用u tutor提供的各种软件和服务。
2、 除了u tutor提供的软件和服务，您还可以用u tutor账号登录使用u tutor合作伙伴的相关服务。</p>
<p>六【u tutor账号的安全】
1、用户对用户名和密码安全负全部责任，由于用户原因造成密码被他人得知而造成的所有损害，由用户承担全部责任；用户若发现任何非法使用用户名或存在安全漏洞的情况，请立即通知u tutor网站； 
2、 u tutor与您共同负有维护u tutor账号安全的责任。u tutor会采取并不断更新技术措施，努力保护您的u tutor账号在服务器端的安全。
3、 您需要采取特定措施保护您的号码安全，包括但不限于妥善保管u tutor账号与密码、安装防病毒木马软件、定期更改密码等措施。</p>
<p>七【u tutor账号找回及密码修改】
如果您的u tutor账号被盗、密码遗忘或因其他原因导致无法正常登录，您可使用邮箱验证的方法来找回账号或修改密码。</p>
<p>八【用户义务】
用户使用u tutor提供的网络服务必须承担下列义务：
1、根据u tutor网站注册程序要求提供用户真实、正确、最新及完整的资料； 
2、当用户资料变更时，应即时主动更新，以确保用户资料真实、正确、最新及完整；
3、 您不得恶意注册u tutor账号。u tutor可以对恶意注册行为进行独立判断和处理。
4、 u tutor账号使用权仅属于初始申请注册人。未经u tutor许可，您不得赠与、借用、租用、转让或售卖u tutor账号或者以其他方式许可非初始申请注册人使用u tutor账号。
5、 如果您当前使用的u tutor账号并不是您初始申请注册的或者通过u tutor提供的其他途径获得的，但您却知悉该u tutor账号当前的密码，您不得用该号码登录或进行任何操作，并请您在第一时间通知u tutor或者该号码的初始申请注册人。
6、用户同意不使用u tutor网站提供的网络服务进行涉及以下范围的任何活动： 
（1）上载、张贴、发送电子邮件或传送任何非法、有害、胁迫、滥用、骚扰、侵害、中伤、粗俗、猥亵、淫秽、诽谤、侵害他人隐私、种族歧视或道德上令人不快的内容； 
（2）上载、张贴、发送电子邮件或传送任何对未成年人有害的内容； 
（3）以任何方式冒充任何人或机构； 
（4）上载、张贴、发送电子邮件或传送根据法律法规、合约或法定关系无权传送的任何内容；或传送任何或涉及国家安全的资料；
（5）上载、张贴、发送电子邮件或传送侵害任何人的任何专利、商标、商业秘密、著作权或其他专属权利的内容； 
（6）上载、张贴、发送电子邮件或传送设计目的用于干扰、破坏或限制任何计算机软件、硬件或通讯设备功能的软件病毒或其他计算机代码、档案和程序的任何资料； 
（7）干扰或破坏u tutor网站网络服务或与u tutor网站相连线的服务器和网络，不遵守与u tutor网站相连线网络的规定，章程、服务条款、操作规范； 
7、用户在u tutor网站公布课程后，需按照公布课程时选择的课程次数及课程时间给予选择该课程的用户以课程指导，若在已有用户选择该课程的情况下该课程临时取消、单次课程时长达不到注册时设定的时长或课程内容与发布课程是设定的课程内容不符，u tutor网站有权向发布该课程的用户追究责任，包括但不限于勒令该用户向选择该课程的用户全额退款及勒令该用户对u tutor网站造成的形象损失进行赔偿。
8、u tutor用户在选择课程并获取该课程资料后（包括但不限于课程附件，上课时所用材料等），用户不得将资料交予他人，若用户违反该条规定，u tutor网站有权向该用户追究赔偿。</p>
<p>九【责任承担】
1、 您理解并同意，作为u tutor账号的初始申请注册人和使用人，您应承担该号码项下所有活动产生的全部责任。
2、 u tutor依照业务规则限制、冻结或终止您的u tutor账号使用，可能会给您造成一定的损失，该损失由您自行承担，腾讯不承担任何责任。
3、 您不得有偿或无偿转让u tutor账号，以免产生纠纷。您应当自行承担由此产生的任何责任，同时u tutor保留追究上述行为人法律责任的权利。
4、所有课程由用户自行选择，课程质量（不包括课程次数及每次课程时长）与u tutor网站无关，且用户不得因为对课程质量不满意而向u tutor网站追究退款。
5、课程附件泄露的风险需由发布该课程的用户自行承担，u tutor不对课程附件的安全负责，若用户发现课程附件被选择该课程的用户泄露，可向u tutor提供证据并由u tutor向泄露附件的该用户追究责任。
6、若用户因u tutor网站出现的漏洞而遭到损失，u tutor有义务修复漏洞但没有义务对用户作出赔偿，用户需向利用漏洞的第三方追究责任。</p>
<p>十【u tutor账号使用的限制、冻结或终止】
1、 如您违反法律法规、u tutor各服务协议或业务规则的规定，腾讯有权进行独立判断并随时限制、冻结或终止您对u tutor账号的使用，且根据实际情况决定是否恢复使用。
2、 如果u tutor发现您并非号码初始申请注册人，u tutor有权在未经通知的情况下终止您使用该u tutor账号。
3、 为了充分利用u tutor账号资源，如果您存在注册u tutor账号后未及时进行初次登录使用，或长期未登陆使用u tutor账号等情形，u tutor有权终止该号码的使用。
4、 u tutor按照本规则或相关法律法规，限制、冻结或终止您对u tutor账号的使用，或将用户在u tutor网站的任何内容加以删除，无论通知与否，由此给您带来的损失（包括但不限于用户资料、课程附件等的清空等），由您自行承担，u tutor网站对用户或任何第三人均不承担责任。</p>
<p>十一【通告】
1、您申请或使用u tutor账号即视为您已阅读并同意受本规则的约束。u tutor有权在必要时修改本规则条款。您可以在u tutor相关页面查阅本规则的最新版本。本规则条款变更后，如果您继续使用u tutor账号，即视为您已接受修改后的规则。如果您不接受修改后的规则，应当停止使用u tutor账号
2、所有发给用户的通告都将通过重要页面的公告、电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。 </p>

<p>u_tutor网站保留对以上条款的解释权。
</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-dark"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
				</div>

			</div>


			<div class="form-group col-md-4 col-center-block">
				<button type="submit" class="btn btn-danger btn-lg btn-block"
					style="width: 31%; margin: auto; line-height: 10px">注&nbsp册</button>
			</div>

			<p class="text-center">
				<span id="code_span" style="color: red">&nbsp&nbsp<span>
						<span style="color: red">&nbsp${regist_error}&nbsp<span>
			</p>
		</form>

		<div>
			<p class="text-center">
				已经注册过Utuor帐号？<a
					href="${pageContext.request.contextPath}/action/login.jsp">点此登录</a>
			</p>
		</div>
		</div>

		<%@include file="../common/footer.jsp"%>
	<!-- page-wrapper end -->

	<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
	<!-- Jquery and Bootstap core js files -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

	<!-- Modernizr javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/modernizr.js"></script>

	<!-- jQuery REVOLUTION Slider  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Isotope javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/isotope/isotope.pkgd.min.js"></script>

	<!-- Owl carousel javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/owl-carousel/owl.carousel.js"></script>

	<!-- Magnific Popup javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Appear javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.appear.js"></script>

	<!-- Count To javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.countTo.js"></script>

	<!-- Parallax javascript -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery.parallax-1.1.3.js"></script>

	<!-- Contact form -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery.validate.js"></script>

	<!-- Initialization of Plugins -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/template.js"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/custom.js"></script>
	
	<script type="text/javascript">
		$(function() {
			if ($(document).width() > 991) {
				$(".main").css("min-height", 700);
				if ($(".left-side").height() < $(".main").height()) {
					$(".left-side").css("height", $(".main").height());
				}
			}
		})
	</script>
</body>
</html>
