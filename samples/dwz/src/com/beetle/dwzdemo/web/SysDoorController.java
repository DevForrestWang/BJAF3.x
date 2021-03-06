package com.beetle.dwzdemo.web;

import com.beetle.dwzdemo.web.common.Const;
import com.beetle.framework.web.controller.ControllerException;
import com.beetle.framework.web.controller.FacadeController;
import com.beetle.framework.web.controller.WebInput;
import com.beetle.framework.web.controller.draw.DrawInfo;
import com.beetle.framework.web.controller.draw.VerifyCodeDraw;
import com.beetle.framework.web.view.ModelData;
import com.beetle.framework.web.view.View;

public class SysDoorController extends FacadeController {

	public SysDoorController() {
		super();
		this.setCacheSeconds(0);
		// this.disableGetMethod();
	}

	@ViewCtrl
	public View loginAction(WebInput wi) throws ControllerException {
		String checkCode = wi.getParameter("checkCode");// 获取用户页面输入验证码
		String verifyCode = wi.getVerifyCode();// 获取系统生成的验证码
		if (!checkCode.trim().equalsIgnoreCase(verifyCode)) {
			ModelData md = new ModelData();
			md.put(Const.WEB_RETURN_MSG, "验证码输入不正确，请重新输入，谢谢！");
			md.put(Const.WEB_FORWARD_URL, "index.html");
			return new View("/infoView.jsp", md);
		}
		String username = wi.getParameter("username");
		String pwd = wi.getParameter("password");
		if (username.equalsIgnoreCase("Henry") && pwd.equals("888888")) {// 写死，只是为了演示
			wi.getSession(true).setAttribute("loginUser", "Henry");// 建立会话，并保持用户信息
			return new View("/main.jsp");// 跳到主界面
		} else {
			ModelData md = new ModelData();
			md.put(Const.WEB_RETURN_MSG, "用户名或密码不正确，登录失败");
			md.put(Const.WEB_FORWARD_URL, "index.html");
			return new View("/infoView.jsp", md);
		}
	}

	@ViewCtrl
	public View logoutAction(WebInput wi) throws ControllerException {
		wi.getSession().invalidate();
		return new View("/index.html");
	}

	@DrawCtrl
	public DrawInfo verifyCodeAction(WebInput webInput)
			throws ControllerException {
		VerifyCodeDraw vcd = new VerifyCodeDraw();
		return vcd.draw(webInput);
	}

}
