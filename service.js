var http = require('http');
var url = require('url');
var fs = require('fs');
var ejs = require('ejs');
var express = require('express');
var path = require('path');
var route = require('./routes/users');
var bodyParser = require('body-parser');

var app = express();
app.use('/',route);

//配置ejs视图的目录
// /static代表存放视图的目录
app.set("views", __dirname + "views");

//模板类型指定为html
app.engine('html', ejs.__express)
app.use(express.static(path.join(__dirname,'static')))
//启动视图引擎
app.set('view engine', 'html')


/*json 解析*/
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));


//设置跨域访问
app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1');
    next();
});

/*监听*/
/*var server = app.listen(8080, "127.0.0.1");
console.log('Server running at http://127.0.0.1:8080/');*/

module.exports = app;