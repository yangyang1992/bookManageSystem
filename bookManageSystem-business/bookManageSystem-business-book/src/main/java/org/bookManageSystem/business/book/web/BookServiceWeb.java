package org.bookManageSystem.business.book.web;

import org.bookManageSystem.business.book.entity.Book;
import org.bookManageSystem.business.book.service.BookService;
import org.bookManageSystem.business.book.service.BookTypeService;
import org.bookManageSystem.fundamental.security.UserContext;
import org.bookManageSystem.fundamental.util.json.JsonMapper;
import org.bookManageSystem.fundamental.util.json.JsonResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Steven
 * Date: 14-12-29
 * Time: 下午12:55
 * To change this template use File | Settings | File Templates.
 */
@Component
@Path("/book")
public class BookServiceWeb {
    @Autowired
    private BookService bookService;

    @Autowired
    private BookTypeService bookTypeService;

    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @Path("/add")
    @POST
    public String add(@FormParam("name")String name,@FormParam("number")String number,@FormParam("bookType")String bookType,@FormParam("count")String count)
    throws ParseException{
        if(name==null||name.equals("")){
            return JsonResultUtils.getCodeAndMesByString(JsonResultUtils.Code.ERROR.getCode(),"参数不能是空!");
        }
        long appId= UserContext.currentUserAppId();
        long id;
        try{
            id = bookService.getIdByNumber(number,appId);
        }catch (Exception e){
            id = 0;
        }
        if(id == 0){
            Book book = new Book();
            book.setAppId(appId);
            book.setName(name);
            book.setNumber(number);
            try{
                book.setCount(Long.parseLong(count));
            }catch (Exception e){
                book.setCount(null);
            }
            book.setBookTypeId(bookTypeService.getIdByName(bookType,appId));
            bookService.add(book);
            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.SUCCESS);
        }else {
            return  JsonResultUtils.getCodeAndMesByString(JsonResultUtils.Code.ERROR.getCode(), "已存在该类型!");
        }
    }

    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @Path("/delete")
    @POST
    public String delete(@FormParam("jsonString")String jsonString){
        Book book= JsonMapper.buildNonDefaultMapper().fromJson(jsonString,Book.class);
        int result=bookService.delete(book);
        if(result>0){
            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.SUCCESS) ;
        }
        else {
            return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.ERROR);
        }
    }

    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @Path("/update")
    @POST
    public String update(@FormParam("jsonString")String jsonString){
        if(jsonString==null||jsonString.trim().equals("")){
            return JsonResultUtils.getCodeAndMesByString(JsonResultUtils.Code.ERROR.getCode(),"参数不能是空!");
        }
        Book book = JsonMapper.buildNonDefaultMapper().fromJson(jsonString,Book.class);
        if(book==null){
            return JsonResultUtils.getCodeAndMesByString(JsonResultUtils.Code.ERROR.getCode(),"参数不能是空!");
        }
        long appId= UserContext.currentUserAppId();
        book.setAppId(appId);
        bookService.update(book);
        return JsonResultUtils.getCodeAndMesByStringAsDefault(JsonResultUtils.Code.SUCCESS);
    }

    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @Path("/list")
    @POST
    public String list(){
        long appId= UserContext.currentUserAppId();
        List<Map<String,String>> list=bookService.getListByAppId(appId);
        return JsonResultUtils.getObjectResultByStringAsDefault(list, JsonResultUtils.Code.SUCCESS);
    }

    @Produces(MediaType.APPLICATION_JSON+";charset=UTF-8")
    @Path("/getIdByNumber")
    @POST
    public String getIdByNumber(@FormParam("number")String number){
        long appId= UserContext.currentUserAppId();
        long bookId=bookService.getIdByNumber(number,appId);
        return JsonResultUtils.getObjectResultByStringAsDefault(bookId, JsonResultUtils.Code.SUCCESS);
    }
}