const express = require('express');
const mysql = require('mysql');
// 创建连接池
var pool = mysql.createPool({
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    password:'',
    database:'hw',
    connectionLimit:15,
    multipleStatements:true
})

// 创建web服务器
var server = express();
server.listen(3000);
//托管静态资源到public目录下
server.use(express.static('public'));

const cros = require('cors');
server.use(cros({
    'credentials':true,
    'origin':'http://localhost:8080'
}));

// 使用session 中间件
const session = require('express-session');
server.use(session({
    secret:'secret',                //对session id 相关的 cookie 进行签名
    resave:true,                    //每次请求是否都更新数据
    saveUninitialized:false,        //是否保存未初始化的对话
    cookie : {
        maxAge : 1000 * 60 * 3,     //设置session的有效时间,毫秒为单位
    },
}));

const bodyParser = require("body-parser");
server.use(bodyParser.urlencoded({extended:false}))

// index页面所有商品信息的加载
server.get("/productList",(req,res)=>{
    var output={};
    pool.query(`
    SELECT * FROM hw_rx; 
    SELECT * FROM hw_phone; 
    SELECT * FROM hw_laptop; 
    SELECT * FROM hw_slab;
    SELECT * FROM hw_watches;
    SELECT * FROM hw_subWatches;
    SELECT * FROM hw_homes;
    SELECT * FROM hw_parts;
    SELECT * FROM hw_boutique;
    SELECT * FROM hw_jxParts;
    `,(err,result)=>{
        if(err) throw err;
        output.rx = result[0];
        output.phone = result[1];
        output.laptop = result[2];
        output.slab = result[3];
        output.watches = result[4];
        output.subWatches = result[5];
        output.homes = result[6];
        output.parts = result[7];
        output.boutique = result[8];
        output.jxParts = result[9];
        res.send(output);
    })
});

// 第一个列表信息
server.get("/listOne",(req,res)=>{
    var sql = 'SELECT * FROM hw_listOne';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})
// 第二个列表信息(subSeventhFloor)
server.get("/listTwo",(req,res)=>{
    var sql = "SELECT * FROM hw_subwatches";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})
// 第三个列表信息(subHomes)
server.get("/listThird",(req,res)=>{
    var sql = "SELECT * FROM hw_subHomes";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})
// 第四个列表信息(subParts)
server.get("/listFour",(req,res)=>{
    var sql = "SELECT * FROM hw_subParts";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})
// 第五个列表信息(subBoutique)
server.get('/listFive',(req,res)=>{
    var sql = "SELECT * FROM hw_subBoutique";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})
// 第六个列表信息(subjxParts)
server.get('/listSix',(req,res)=>{
    var sql = "SELECT * FROM hw_subjxParts";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({result});
    })
})



