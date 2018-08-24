package com.guanghe.api.web.controller;

import com.alibaba.fastjson.JSON;
import com.guanghe.api.util.wechat.CheckUtil;
import com.guanghe.api.util.wechat.HttpClientUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/10.
 */
@Controller
@RequestMapping("/wechat")
public class WechatController {

    final static String APPID = "wxd492f72cc0ef2d28";
    final static String AppSecret = "b77b7f528944236ad29db2b967b3a60b";

    @RequestMapping(value = "/wx",method= RequestMethod.GET)
    public void wx(HttpServletRequest request,HttpServletResponse response){
        String signature = request.getParameter("signature");
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");
        String echostr = request.getParameter("echostr");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            if(CheckUtil.checkSignature(signature, timestamp, nonce)){
                out.write(echostr);
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            out.close();
        }

    }

    //https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect
    //若提示“该链接无法访问”，请检查参数是否填写错误，是否拥有scope参数对应的授权作用域权限。
    @RequestMapping(value = "/oauth2",method= RequestMethod.GET)
    public void oauth2(HttpServletRequest request,HttpServletResponse response){
        String REDIRECT_URI = "http%3a%2f%2f21x41430n1.51mypc.cn%2fapp";
        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ APPID +"&redirect_uri=" +REDIRECT_URI + "&response_type=code&scope=snsapi_base&state=117#wechat_redirect";
        System.out.println(url);
        String codeResult = HttpClientUtil.httpGetRequest(url);
        System.out.println(codeResult);
    }

    @RequestMapping(value = "/singIn",method= RequestMethod.GET)
    public ModelAndView singIn(HttpServletRequest request,HttpServletResponse response,String code,String state){

        String access_token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APPID+"&secret="+AppSecret+"&code="+code+"&grant_type=authorization_code";
        String access_token_url_result = HttpClientUtil.httpGetRequest(access_token_url);
        System.out.println(access_token_url_result);

        Map<String,Object> tokenMap = JSON.parseObject(access_token_url_result);

        //https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
        String userinfo_url = "https://api.weixin.qq.com/sns/userinfo?access_token="+tokenMap.get("access_token")+"&openid="+tokenMap.get("openid")+"&lang=zh_CN";
        String userinfo_result = HttpClientUtil.httpGetRequest(userinfo_url);
        System.out.println(userinfo_result);

        ModelAndView view = new ModelAndView();
        view.setViewName("/wechat/singIn");
        view.addObject("code", userinfo_result);
        return view;
    }


}
