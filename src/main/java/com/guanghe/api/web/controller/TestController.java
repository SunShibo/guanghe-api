package com.guanghe.api.web.controller;

import com.guanghe.api.dao.TestDAO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.TestService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

/**
 * @author Shibo Sun
 *         主机controller
 */
@Controller
@RequestMapping("/test")
public class TestController extends BaseCotroller {


    static final Logger log = LoggerFactory.getLogger(TestController.class);

    @Resource
    private TestService testService;

    @RequestMapping("/test")
    public void test(HttpServletResponse response,String imgUrl,String table) throws UnsupportedEncodingException {
     //   String imgUrl="img_url",table="gh_asset_management_details";
        List<String> list=testService.getImgUrl(imgUrl,table);
        for(int i=0;i<list.size();i++){
            String[] split = list.get(i).split("/");
            String fixe="https://guangheimage.oss-cn-beijing.aliyuncs.com/";
            downloadPicture(fixe+java.net.URLEncoder.encode(list.get(i), "UTF-8"),"D:\\static\\"+split[split.length-1]);
        }

    }

    public static void main(String[] args){



    }







    private   void downloadPicture(String urlList,String path) {
        URL url = null;
        try {
            url = new URL(urlList);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());

            FileOutputStream fileOutputStream = new FileOutputStream(new File(path));
            ByteArrayOutputStream output = new ByteArrayOutputStream();

            byte[] buffer = new byte[1024];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }



}
