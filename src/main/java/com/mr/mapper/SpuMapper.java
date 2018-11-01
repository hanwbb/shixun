package com.mr.mapper;

import com.mr.model.TMallProduct;

import java.util.Map;

/**
 * Created by Administrator on 2018/10/29 0029.
 */
public interface SpuMapper {
    void save(TMallProduct spu);

    void saveSpuImgs(Map map);
}
