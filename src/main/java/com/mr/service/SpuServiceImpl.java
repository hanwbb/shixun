package com.mr.service;

import com.mr.mapper.SpuMapper;
import com.mr.model.TMallProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/10/29 0029.
 */
@Service
public class SpuServiceImpl implements SpuService{
    @Autowired
    private SpuMapper spuMapper;

    public void save(TMallProduct spu, List<String> urlList) {
        //mybatis增加完数据之后获取自增的id
        spuMapper.save(spu);
        Map map = new HashMap();
        map.put("urlList",urlList);
        map.put("shpId",spu.getId());
        //上传图片
        spuMapper.saveSpuImgs(map);
    }
}
