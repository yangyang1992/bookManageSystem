package org.bookManageSystem.business.anonymous.web;

import org.bookManageSystem.fundamental.util.json.JsonResultUtils;
import org.springframework.stereotype.Component;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * Created with IntelliJ IDEA.
 * AnonymousUser: yangyang
 * Date: 14-11-1
 * Time: 下午2:58
 * To change this template use File | Settings | File Templates.
 */
@Component
@Path("/anonymous")
public class AnonymousServiceWeb {
    @Path("/test")
    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @POST
    public String test() {
        System.out.println("Hello World !");
        return JsonResultUtils.getCodeAndMesByString(JsonResultUtils.Code.SUCCESS.getCode(), "匿名访问成功!");
    }
}
