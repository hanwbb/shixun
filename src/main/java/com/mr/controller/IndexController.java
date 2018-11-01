package com.mr.controller;

import com.mr.model.TMallProduct;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by yaodd on 2018/10/29.
 */
@Controller
public class IndexController {

    @RequestMapping("/toSpuPage")
    public String  toAddSpuPage(TMallProduct spu , ModelMap map){
        map.put("spu",spu);
        return "spu";
    }
    @RequestMapping("/toAttrPage")
    public String  toAttrPage(){
        return "attr";
    }

    @RequestMapping("/toSkuPage")
    public String  toSkuPage(){
        return "sku";
    }



}
