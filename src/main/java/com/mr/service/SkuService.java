package com.mr.service;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;

import java.util.List;

/**
 * Created by Administrator on 2018/10/31 0031.
 */
public interface SkuService {
    List<TMallProduct> selectSpu(TMallProduct spu);

    void saveSku(TMallSkuVO skuVO);

}
