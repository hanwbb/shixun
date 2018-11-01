package com.mr.model;

import lombok.ToString;

import java.util.List;

/**
 * Created by yaodd on 2018/10/30.
 */
@ToString
public class OBJECTTMallAttr extends  TMallAttr{

    private List<TMallValue> valueList;


    public List<TMallValue> getValueList() {
        return valueList;
    }

    public void setValueList(List<TMallValue> valueList) {
        this.valueList = valueList;
    }
}
