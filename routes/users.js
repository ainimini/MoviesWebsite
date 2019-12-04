var express = require('express');
var mysql = require('mysql');
var router = express.Router();
var result = require('../model/result');
var mysqlConf = require('../db/dbConnect');
var bodyParser = require('body-parser')
var router = express();
const connection = mysqlConf();


/*电影列表*/
router.get('/k', function (req, res) {
    res.writeHead(200, {'Content-Type': 'routerlication/json; charset=utf-8','Access-Control-Allow-Origin': '*','Access-Control-Allow-Metheds': 'PUT, POST, GET, DELETE, OPTIONS','Access-Control-Allow-Headers':'Origin; X-Requested-With; Content-Type; Accept'});
    connection.query('SELECT * from movies_k', function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

router.get('/g', function (req, res) {
    res.writeHead(200, {'Content-Type': 'routerlication/json; charset=utf-8','Access-Control-Allow-Origin': '*','Access-Control-Allow-Metheds': 'PUT, POST, GET, DELETE, OPTIONS','Access-Control-Allow-Headers':'Origin; X-Requested-With; Content-Type; Accept'});
    connection.query('SELECT * from movies_g', function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

router.get('/x', function (req, res) {
    res.writeHead(200, {'Content-Type': 'routerlication/json; charset=utf-8','Access-Control-Allow-Origin': '*','Access-Control-Allow-Metheds': 'PUT, POST, GET, DELETE, OPTIONS','Access-Control-Allow-Headers':'Origin; X-Requested-With; Content-Type; Accept'});
    connection.query('SELECT * from movies_x', function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

router.get('/d', function (req, res) {
    res.writeHead(200, {'Content-Type': 'routerlication/json; charset=utf-8','Access-Control-Allow-Origin': '*','Access-Control-Allow-Metheds': 'PUT, POST, GET, DELETE, OPTIONS','Access-Control-Allow-Headers':'Origin; X-Requested-With; Content-Type; Accept'});
    connection.query('SELECT * from movies_d', function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
    });
});

/*用户注册*/
router.use('/registers', function (req, res) {
    var username = req.body.username;
    var password = req.body.password;
    var email = req.body.email;
    connection.query("insert into user(username,password,email) values('" + username + "','" + password + "','" + email + "')", function (err, rows) {
        if (err) {
            res.end('新增失败：' + err);
        } else {
            res.redirect('index');
        }
    })
});

/*用户登录*/
router.get('/userLogin', function (req, res) {
    var username = req.query.username;
    var password = req.query.password;
    console.log(username);
    console.log(password);
    //使用callback避免异步处理返回为空
    var message = getUserInfor(username, password, function (json) {
        res.send(json);
    })

    function getUserInfor(username, password, callback) {

        //根据名字查询数据库信息
        /*var sql = 'SELECT password FROM user WHERE username = "' + username + '"';*/
        var sql = 'SELECT * FROM user';

        connection.query(sql, function (err, result) {

            console.log('--------------------------result----------------------------');
            //转换json
            var message = JSON.stringify(result);
            message = JSON.parse(message);
            console.log(message);
            console.log(message[0].username);
            console.log(message[0].password);

            if (err) {
                callback('查询失败');
                console.log('查询失败');
                return;
            }
            if (message[0].password == password && message[0].username == username) {
                /*  callback('登陆成功');*/
                res.redirect('/index');
                return;
            }
            else {
                callback('用户名和密码不正确');
                return;
            }
            console.log('------------------------------------------------------------\n\n');
        });
    }

});

/*科幻电影添加*/
router.use('/moviesAddK', function (req, res) {
    var name = req.body.name;
    var actor = req.body.actor;
    var synopsis = req.body.synopsis;
    var url = req.body.url;
    var maxImage = req.body.maxImage;
    var minImage = req.body.minImage;
    connection.query("insert into movies_k(name,actor,synopsis,url,maxImage,minImage) values('" + name + "','" + actor + "','" + synopsis + "','" + url + "','" + maxImage + "','" + minImage + "')", function (err, rows) {
        if (err) {
            res.end('新增失败：' + err);
        } else {
            res.redirect('/admin');
        }
    })
});

/*情感电影添加*/
router.use('/moviesAddG', function (req, res) {
    var name = req.body.name;
    var actor = req.body.actor;
    var synopsis = req.body.synopsis;
    var url = req.body.url;
    var maxImage = req.body.maxImage;
    var minImage = req.body.minImage;
    connection.query("insert into movies_g(name,actor,synopsis,url,maxImage,minImage) values('" + name + "','" + actor + "','" + synopsis + "','" + url + "','" + maxImage + "','" + minImage + "')", function (err, rows) {
        if (err) {
            res.end('新增失败：' + err);
        } else {
            res.redirect('/admin');
        }
    })
});

/*喜剧电影添加*/
router.use('/moviesAddX', function (req, res) {
    var name = req.body.name;
    var actor = req.body.actor;
    var synopsis = req.body.synopsis;
    var url = req.body.url;
    var maxImage = req.body.maxImage;
    var minImage = req.body.minImage;
    connection.query("insert into movies_x(name,actor,synopsis,url,maxImage,minImage) values('" + name + "','" + actor + "','" + synopsis + "','" + url + "','" + maxImage + "','" + minImage + "')", function (err, rows) {
        if (err) {
            res.end('新增失败：' + err);
        } else {
            res.redirect('/admin');
        }
    })
});

/*动画电影添加*/
router.use('/moviesAddD', function (req, res) {
    var name = req.body.name;
    var actor = req.body.actor;
    var synopsis = req.body.synopsis;
    var url = req.body.url;
    var maxImage = req.body.maxImage;
    var minImage = req.body.minImage;
    connection.query("insert into movies_d(name,actor,synopsis,url,maxImage,minImage) values('" + name + "','" + actor + "','" + synopsis + "','" + url + "','" + maxImage + "','" + minImage + "')", function (err, rows) {
        if (err) {
            res.end('新增失败：' + err);
        } else {
            res.redirect('/admin');
        }
    })
});


/*网址登陆页面*/
router.use(express.static('views'));
router.get('/index', function (req, res) {
    res.render('index.html')
});
router.get('/login', function (req, res) {
    res.render('login.html')
});
router.get('/register', function (req, res) {
    res.render('register.html')
});
router.get('/admin', function (req, res) {
    res.render('admin.html')
});
router.get('/moviesAddK', function (req, res) {
    res.render('moviesAddK.html')
});
router.get('/moviesAddD', function (req, res) {
    res.render('moviesAddD.html')
});
router.get('/moviesAddG', function (req, res) {
    res.render('moviesAddG.html')
});
router.get('/moviesAddX', function (req, res) {
    res.render('moviesAddX.html')
});


module.exports = router;
