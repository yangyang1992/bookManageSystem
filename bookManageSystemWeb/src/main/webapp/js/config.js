(function($){
    $.URL = {
        "common":{
            "rootPath":"http://localhost:8080/"
        },
        "power":{
            "add":"rs/power/add",
            "update":"rs/power/update",
            "delete":"rs/power/delete",
            "list":"rs/power/list"
        },
        "user":{
            "add":"rs/user/add",
            "update":"rs/user/update",
            "delete":"rs/user/delete",
            "list":"rs/user/list",
            "getId":"rs/user/getIdByName" ,
            "currentUserId": "rs/user/currentUserId",
            "currentUserInfo":"rs/user/currentUser"
        },
        "authority":{
             "add":"rs/authority/add",
             "update":"rs/authority/update",
             "delete":"rs/authority/delete",
            "list":"rs/authority/list"
        },
        "userAuthority":{
              "add":"rs/userAuthority/add"
        },
        "anonymous":{
            "test":"rs/anonymous/test",
            "validateImage":"rs/anonymous/validateImage",
            "register":"rs/anonymous/register"
        },
        "readerRecord":{
            "add":"rs/readerRecord/add",
            "update":"rs/readerRecord/update",
            "delete":"rs/readerRecord/delete",
            "list":"rs/readerRecord/list",
            "getReaderRecordById":"rs/readerRecord/getReaderRecordById",
            "getBookSetById":"rs/readerRecord/getBookSetById",
            "getBookIdListById":"rs/readerRecord/getBookIdListById"
        },
        "reader":{
            "add":"rs/reader/add",
            "update":"rs/reader/update",
            "delete":"rs/reader/delete",
            "list":"rs/reader/list",
            "getReaderById":"rs/reader/getReaderById",
            "getNameById":"rs/reader/getNameById"
        },
        "optionType":{
            "add":"rs/optionType/add",
            "update":"rs/optionType/update",
            "delete":"rs/optionType/delete",
            "list":"rs/optionType/list",
            "getOptionTypeById":"rs/optionType/getOptionTypeById",
            "getNameById":"rs/optionType/getNameById"
        },
        "prefix":{
            "add":"rs/prefix/add",
            "update":"rs/prefix/update",
            "delete":"rs/prefix/delete",
            "list":"rs/prefix/list",
            "getReaderById":"rs/prefix/getPrefixById",
            "getNameById":"rs/prefix/getNameById"
        },
        "anonymousUser":{
            "add":"rs/anonymousUser/add",
            "test":"rs/anonymous/test",
            "validateImage":"rs/anonymous/validateImage",
            "register":"rs/anonymous/register"
        }
    }
})(jQuery);