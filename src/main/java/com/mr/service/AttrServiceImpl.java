package com.mr.service;

import com.mr.mapper.AttrMapper;
import com.mr.model.OBJECTTMallAttr;
import com.mr.model.TMallAttrVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/10/30 0030.
 */
@Service
public class AttrServiceImpl implements AttrService{
    @Autowired
    private AttrMapper attrMapper;

    public void saveAttr(Integer flbh2, TMallAttrVO attrVO) {
        List<OBJECTTMallAttr> attrList = attrVO.getAttrList();
        for (int i = 0; i < attrList.size(); i++) {
            //增加属性，传递flbh2
            OBJECTTMallAttr attr = attrList.get(i);
            attr.setFlbh2(flbh2);
            attrMapper.saveAttr(attr);

            //增加valueList,获取到自增的id
            Map<String, Object> map = new HashMap();
            map.put("shxmId",attr.getId());
            map.put("valueList",attr.getValueList());
            attrMapper.saveValue(map);
        }
    }

    public List<OBJECTTMallAttr> findAttrByclass2(Integer flbh2) {

        return attrMapper.findAttrByclass2(flbh2);
    }
}
