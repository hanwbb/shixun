package com.mr.service;

import com.mr.model.TMallProduct;

import java.util.List;

/**
 * Created by Administrator on 2018/10/29 0029.
 */
public interface SpuService {
    void save(TMallProduct spu, List<String> urlList);
}
