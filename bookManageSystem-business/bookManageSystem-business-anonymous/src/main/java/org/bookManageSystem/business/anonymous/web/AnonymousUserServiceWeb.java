package org.bookManageSystem.business.anonymous.web;

import org.bookManageSystem.business.anonymous.entity.AnonymousUser;
import org.bookManageSystem.business.anonymous.entity.AnonymousUserAuthority;
import org.bookManageSystem.business.anonymous.service.AnonymousUserAuthorityService;
import org.bookManageSystem.business.anonymous.service.AnonymousUserService;
import org.bookManageSystem.fundamental.logger.FundamentalLogger;
import org.bookManageSystem.fundamental.security.MD5Encoder;
import org.bookManageSystem.fundamental.util.json.JsonResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * Created with IntelliJ IDEA.
 * AnonymousUser: MikuKing
 * Date: 14-12-22
 * Time: 下午3:23
 * To change this template use File | Settings | File Templates.
 */
@Component
@Path("/anonymousUser")
public class AnonymousUserServiceWeb {
    private static  final FundamentalLogger logger = FundamentalLogger.getLogger(AnonymousUserServiceWeb.class);
    @Autowired
    private AnonymousUserService anonymousUserService;

    @Autowired
    private AnonymousUserAuthorityService anonymousUserAuthorityService;

    @Path("/add")
    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @POST
    public String add(@FormParam("username")String username,@FormParam("password")String password,@FormParam("sex")String sex) {
        logger.info(username+"|"+password+"|"+sex);
        AnonymousUser user=new AnonymousUser();
        user.setName(username);
        String newPassword = MD5Encoder.GetMD5Code(password);
        user.setPassword(newPassword);
        user.setSex(sex);
        user.setStatus("启用");
        user.setRole("ROLE_USER");
        user.setAppId(Long.parseLong("1"));
        AnonymousUserAuthority userAuthority=new AnonymousUserAuthority();

//        if (anonymousUserService.checkUsername(username)==username){
//            anonymousUserService.add(user);
//            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.SUCCESS);
//        }else{
//            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.ERROR);
//        }
        long id = 0;
        try {
            id = anonymousUserService.getIdByName(username);
        } catch (Exception e){
            e.printStackTrace();
        }
        if (id == 0) {
            anonymousUserService.add(user);
            userAuthority.setUserId(user.getId());
            userAuthority.setAuthorityId(Long.parseLong("1"));
            userAuthority.setUserName(username);
            userAuthority.setAuthorityName("ROLE_USER");
            anonymousUserAuthorityService.add(userAuthority);
            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.SUCCESS);
        }else {
            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.ERROR);
        }
    }

}
