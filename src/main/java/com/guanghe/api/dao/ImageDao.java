package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.ImageBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
public interface ImageDao {
    public List<ImageBo> queryImageInfo();
    public void updateImage(ImageBo imageBo);
    public  void addImage(ImageBo imageBo);
    public void deleteImage(Integer Id);

}
