package com.mr.mapper;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/10/31 0031.
 */
public interface SkuMapper {
    List<TMallProduct> selectSpu(TMallProduct spu);

    void saveSku(TMallSkuVO skuVO);

    void saveSkuAttrValue(Map<String, Object> map);
}
