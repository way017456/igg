const express = require('express');
const server = express();
server.listen(3000);
const cors = require('cors');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'igg',
    connectionLimit:20
});
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}));

server.use(bodyParser.urlencoded({extended:true}));

server.post('/login',(req,res)=>{
    let uname = req.body.uname;
    let password = req.body.password;
    let sql = 'select * from user where phone = ? and password = ?';
    pool.query(sql,[uname,password],(err,result)=>{
        if(err) throw err;
        if(result.length > 0){
            // console.log(result);
            return res.send({code:1,msg:'success',result:result[0]})
        }else{
            res.send({code:0,msg:'fail'});
        }
    });
});

server.post('/register',(req,res)=>{
    let password = req.body.password;
    let email = req.body.email;
    let sql = 'select email from user where email = ?';
    pool.query(sql,[email],(err,result)=>{
        if(err) throw err;
        if(result.length > 0){
            res.send({code:0});
        }else{
            let sql = 'insert into user set email = ?,password = ?';
            pool.query(sql,[email,password],(err,result)=>{
                if(err) throw err;
                if(result.affectedRows > 0){
                    res.send({code:1});
                }else{
                    res.send({code:0});
                }
            });
        }
    });
})

server.get('/banner',(req,res)=>{
    let sql = 'select path from bannerimage';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

server.get('/list',(req,res)=>{
    let cid = req.query.cid;
    // console.log(cid);
    let sql = 'select * from pro where cid = ?';
    pool.query(sql,[cid],(err,result)=>{
        if(err) throw err;
        res.send({result});
        // console.log(result);
    });
});

server.get('/details',(req,res)=>{
    let id = req.query.id;
    // console.log(id);
    let sql = 'select * from pro where id = ?';
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({result});
        // console.log(result);
    });
});

server.post('/emaillogin', (req, res) => {
    let email = req.body.email;
    let password = req.body.password;
    let sql = 'select * from user where email = ? and password = ?';
    pool.query(sql, [email, password], (err, result) => {
        if (err) throw err;
        if (result.length > 0) {
            res.send({code:1});
        } else {
            res.send({code:0});
        }
    });
});