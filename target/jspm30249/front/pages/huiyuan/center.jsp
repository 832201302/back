<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#center-container .right-container .layui-form .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #555;
						font-size: 16px;
						border-color: #e5d9c6;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: #fff;
						width: 360px;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div id="breadcrumb">
				<span class="en">USER / CENTER</span>
				<span class="cn">个人中心</span>
			</div>

			<div id="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div :style='{"width":"100%","padding":"120px 0 100px","margin":"0px 0 0","background":"url(http://codegen.caihongy.cn/20230109/138a4d606eae4a168810cef229969885.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/b95aeae1c1294f398aefb7c6cd5b16de.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/5ffc803e6682418eb7f0b09a98e35527.png) no-repeat center bottom,#faf0e6"}' class="right-container">
					<form :style='{"padding":"20px 7%","boxShadow":"0px 0px 0px #eee","borderColor":"#ddd","flexWrap":"wrap","background":"none","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}' class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">会员账号</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" readonly="readonly" name="huiyuanzhanghao" name="huiyuanzhanghao" id="huiyuanzhanghao" placeholder="会员账号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">密码</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" name="mima" id="mima" placeholder="密码" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">会员姓名</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="huiyuanxingming" name="huiyuanxingming" id="huiyuanxingming" placeholder="会员姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">性别</label>
							<select name="xingbie" id="xingbie" >
								<option value="">请选择</option>
								<option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">年龄</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="nianling" name="nianling" id="nianling" placeholder="年龄" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">邮箱</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="youxiang" name="youxiang" id="youxiang" placeholder="邮箱" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 2px","display":"flex","width":"100%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">手机号</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="shoujihao" name="shoujihao" id="shoujihao" placeholder="手机号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item" :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#efe4d4","borderWidth":"0 0  2px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"44px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">头像</label>
							<img id="touxiangImg" :style='{"minHeight":"80px","width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"auto"}' src="../../img/avator.png">
							<input type="hidden" id="touxiang" name="touxiang" />
							<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#e5d9c6","color":"#cca162","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"16px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
								<i :style='{"color":"#cca162","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传图片
							</button>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 2px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"90px","padding":"0 15px","lineHeight":"40px","fontSize":"18px","color":"#b68742","textAlign":"right"}' class="layui-form-label">余额</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#e5d9c6","color":"#555","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"auto","fontSize":"16px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="number" name="money" id="money" placeholder="余额" autocomplete="off" class="layui-input" disabled="disabled">
							<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 0 0 10px","borderColor":"#e5d9c6","color":"#cca162","outline":"none","borderRadius":"0px","background":"rgba(255,255,255,1)","borderWidth":"1px","width":"auto","fontSize":"16px","lineHeight":"36px","borderStyle":"solid","height":"40px"}' id="btn-recharge" type="button" class="layui-btn btn-theme">
								<i :style='{"color":"#cca162","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe65e;</i>点我充值
							</button>
						</div>
						<div :style='{"width":"100%","margin":"40px 0 20px","alignItems":"center","textAlign":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
							<button :style='{"cursor":"pointer","padding":"0px 20px","margin":"0 20px 0 0","borderColor":"#59B450","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"#cca162","borderWidth":"0","width":"auto","fontSize":"18px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							<button :style='{"cursor":"pointer","padding":"0px 20px","margin":"0 10px","borderColor":"#999","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"#1e8892","borderWidth":"0","width":"auto","fontSize":"18px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					xingbie: [],
					centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('vip');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../shop-recharge/recharge.jsp'
					});
				});
				// 会员购买
				jquery('#btn-buyvip').click(function(e) {
					layer.open({
						type: 2,
						title: '会员购买',
						area: ['900px', '600px'],
						content: '../shop-recharge/buyvip.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
											if (element.value != null) {
											  swiperList.push({
												img: http.baseurl+element.value
											  });
											}
						});
						vue.swiperList = swiperList;
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '550px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});

				vue.xingbie = '男,女'.split(',')
				// 上传图片
				var touxiangUpload = upload.render({
					//绑定元素
					elem: '#touxiangUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#touxiang').val(url);
							jquery('#touxiangImg').attr('src', http.baseurl+url)
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
                setTimeout(()=>{
                    http.request(`${table}/session`, 'get', {}, function(data) {
                        // 表单赋值
                        form.val("myForm", data.data);
                        // 图片赋值
                        jquery("#touxiangImg").attr("src", http.baseurl+data.data.touxiang);
                    });
                },100)
				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
				    if(!data.huiyuanzhanghao){
					layer.msg('会员账号不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!data.mima){
					layer.msg('密码不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!data.huiyuanxingming){
					layer.msg('会员姓名不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!isEmail(data.youxiang)){
					layer.msg('邮箱应输入邮箱格式', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!isMobile(data.shoujihao)){
					layer.msg('手机号应输入手机格式', {
									time: 2000,
									icon: 5
								});
					return false
				    }
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>