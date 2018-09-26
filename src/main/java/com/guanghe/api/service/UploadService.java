package com.guanghe.api.service;

import com.guanghe.api.dao.UserDAO;
import com.guanghe.api.entity.UserDO;
import com.guanghe.api.entity.bo.XtgMaterialLibrary;
import com.guanghe.api.entity.bo.imageresultBo;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.OssUploadFileUtil;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.util.Date;

/**
 * Created by yxw on 2018/9/26.
 */
@Service("UploadService")
@Transactional
public class UploadService {
    @Resource
    private UserDAO userDAO;

    public imageresultBo uploadMaterialLibrary(MultipartFile file){
        imageresultBo news =new imageresultBo();
        if(file.isEmpty()){
            news.setCode("0");
            news.setMsg("文件有误，请重新选择！");
        }else{
            String originalFilename = file.getOriginalFilename();
            //获得文件后缀名称
            String imageRoot = SystemConfig.getString("img_file_root");
            String yyyyMMdd = DateUtils.formatDate(DateUtils.LONG_DATE_PATTERN_PLAIN, new Date());
            String imageUrl = imageRoot  + "/"+yyyyMMdd +  originalFilename;
            OssUploadFileUtil.uploadMultipartFile(file,
                    SystemConfig.getString("image_bucketName"), imageUrl);

            String fileExt = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
            XtgMaterialLibrary materialLibrary = new XtgMaterialLibrary();
            try {
                BufferedImage bi = ImageIO.read(file.getInputStream());
                materialLibrary.setImageWidth(bi.getWidth());
                materialLibrary.setImageHeight(bi.getHeight());
                bi.flush();
            }catch (Exception e){
                e.printStackTrace();
            }
            materialLibrary.setImageUrl(imageUrl);
            String Url = "https://" +SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/"+imageUrl;
            // 添加素材信息
            news.setImageUrl(imageUrl);
            news.setUrl(Url);
        }
        return news;
    }
}
