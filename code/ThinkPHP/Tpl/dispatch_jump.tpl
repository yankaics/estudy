<?php
    if(C('LAYOUT_ON')) {
        echo '{__NOLAYOUT__}';
    }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- <link href="__PUBLIC__/css/public.css" rel="stylesheet" type="text/css" />
	-->
	<link href="__PUBLIC__/css/head.css" rel="stylesheet" type="text/css" />
	<link href="__PUBLIC__/css/public.css" rel="stylesheet" type="text/css" />
	<link href="__PUBLIC__/css/contentright.css" rel="stylesheet" type="text/css" />
	<link href="__PUBLIC__/css/dynamicdetails.css" rel="stylesheet" type="text/css" />
	<title>跳转提示</title>
	<style type="text/css">
		*{ padding: 0; margin: 0; }
		body{ background: #fff; font-family: '微软雅黑'; color: #333; font-size: 16px; }
		.content{ height: 312px;}
		.system-message{ font-size:25px; padding: 24px 48px; }
		.system-message .message{ width: 385px;}
		.system-message h1{ font-size: 45px; font-weight: normal; line-height: 80px;}
		.system-message .jump{ padding-top: 10px}
		.system-message .jump a{ color: #333;}
		.system-message .success,.system-message .error{ line-height: 1.8em;font-size: 28px }
		.system-message .detail{ font-size: 12px; line-height: 20px; margin-top: 12px; display:none}
	</style>
</head>
<body style="background-color:#f7f7f7">
	<div class="header" style="background-color:#fff">
		<div class="mybody">
			<div class="logo">
				<a href="http://estudy.csbroswer.cn">
					<img src="__PUBLIC__/images/logo2.png" width="193" height="60" alt="logo" />
				</a>
			</div>
			<div class="nav">
				<div class="navtop">
					<if condition="$Think.session.name neq null">
						<a href="{:U('/home/person/homepage')}" class="log">{$Think.session.name}</a>
						<a href="{:U('/home/login/exits')}" class="log sign">注销</a>
						<p>
							<a href="mailto:estudy@csbroswer.cn?subject=联系易学助手&body=您想告诉我们什么？">客服邮箱</a>
							&nbsp;&nbsp;&nbsp;estudy@csbroswer.cn
						</p>
						<else />
						<a href="{:U('/home/login/login')}" class="log">登录</a>
						<a href="{:U('/home/register')}" class="log sign">注册</a>
						<p>
							<a href="mailto:estudy@csbroswer.cn?subject=联系易学助手&body=您想告诉我们什么？">客服邮箱</a>
							&nbsp;&nbsp;&nbsp;estudy@csbroswer.cn
						</p>
					</if>
				</div>
				<div class="line"></div>
				<a href="{:U('/home/match/matchlist')}" class="xz">
					<div class="xzimg">
						<img src="__PUBLIC__/images/gl2.png" width="21" height="21" alt="gl"/>
					</div>
					<p>比赛攻略</p>
				</a>
				<a href="{:U('/home/certificate/certificatelist')}" class="xz xz2">
					<div class="xzimg">
						<img src="__PUBLIC__/images/gw2.png" width="21" height="21" alt="gl"/>
					</div>
					<p>考证顾问</p>
				</a>
				<a href="{:U('/home/forum')}" class="xz xz2">
					<div class="xzimg">
						<img src="__PUBLIC__/images/jy2.png" width="21" height="21" alt="gl"/>
					</div>
					<p>论坛交流</p>
				</a>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="mybody"  style="background-color: #f7f7f7;padding-bottom:30px;height=300px;">
			<div class="system-message" style="position:absolute;text-align:center;padding-top:7%;left:35%;bottom:60%">
				<?php if(isset($message)) {?>
				<div style="position:absolute;text-align:center;left:-190%;top:40%">
					<img src="__PUBLIC__/images/success.png" alt="success" width="220px"></div>
				<div class="message" style="position:absolute;left:38%;bottom:-100%">
					<h1>eStudy提醒您</h1>
					<p class="success">
						<?php echo($message); ?></p>
					<?php }else{?>
					<div style="position:absolute;text-align:center;left:-110%;top:40%">
						<img src="__PUBLIC__/images/404.png" alt="success"  width="200px"></div>
					<div class="message" style="position:absolute;left:38%;bottom:-80%">
						<h1>eStudy提醒您</h1>
						<p class="error">
							<?php echo($error); ?></p>
						<?php }?>
						<p class="detail"></p>
						<p class="jump">
							页面将在 <b id="wait"><?php echo($waitSecond); ?></b>
							秒后自动
							<a id="href" href="<?php echo($jumpUrl); ?>">跳转</a>
						</p>
					</div>
				</div>
			</div>
			<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time <= 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>
			<br/>

		</div>
	</div>
	<div class="footer" style="position:fixed;bottom:0%;width:100%">
    <div class="mybody">
        <div class="ewm">
            <img src="__PUBLIC__/images/ewm.jpg" width="110" height="110" alt="ewm" />
            <p>关注estudy微信公众号</p>
        </div>
        <div class="footermiddle">
            <ul>
                <li>
                    <a href="{:U('/home/others/aboutus')}" class="footernav">关于我们</a>
                </li>
                <li>
                    <a href="{:U('/home/others/callus')}" class="footernav footernav2">联系我们</a>
                </li>
                <li>
                    <a href="{:U('/home/others/tellus')}" class="footernav footernav2">意见反馈</a>
                </li>
            </ul>
            <p class="bq">版权所有 2016 易学助手项目组 保留一切权利 冀ICP备16024873号</p>
            <p class="dh">
                联系邮箱：
                <a href="mailto:estudy@csbroswer.cn?subject=联系易学助手&body=您想告诉我们什么？" style="color: white;font-size: 12px;">&nbsp;estudy@csbroswer.cn</a>
            </p>
        </div>
        <div class="footermiddle footerr">
            <a href="#" class="footernav">友情链接</a>
            <ul>
                <?php
                        $dsn="mysql:host=localhost;dbname=estudy";
                        $dbUser='root';
                        $dbPswd='';
                        $pdo = new PDO($dsn,$dbUser, $dbPswd);
                        $sql = "set names utf8";
                        $pdo->exec($sql);
                        if(!$pdo){
                            echo '连接失败';
                        }
                        //有结果的查询
                        $sql="select * from blogroll";
                        $sta = $pdo->query($sql);
                        $urls = $sta->fetchAll();
                        for($i=0;$i<count($urls);$i++){    // 循环读取二维数组中的数据
                ?>
                    <li>
                        <a href="<?php echo $urls[$i]['url'];?>
                            " class="yqlj yqlj2" target="_blank" >
                            <?php echo $urls[$i]['name'];?></a>
                    </li>
                    <?php
                }
                ?></ul>
            </div>
        </div>
    </div>
</body>
</html>
