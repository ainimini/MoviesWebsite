/**
 * Created by dell on 2019/10/25.
 */
var mysql=require('mysql');

// 现在只是练习可以直接为数据库创建链接，
// 用户多时需要创建连接池
function connectServer(){
    var client=mysql.createConnection({
        host:'localhost',
        port:3306,
        database:'movies',
        user:'root',
        password:'root'
    })
    return client;
}
module.exports=connectServer;