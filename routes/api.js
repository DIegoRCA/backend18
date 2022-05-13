var express = require('express');
var router = express.Router();
var novedadesModel = require('./../models/novedadesModel');
var cloudinary = require('cloudinary').v2;
var nodemailer = require('nodemailer');

router.get('/novedades', async function (req,res,next){
    let novedades = await novedadesModel.getNovedades();

    novedades= novedades.map(novedades =>{
        if (novedades.img_id){
          const imagen= cloudinary.url(novedades.img_id, {
            width: 960,
            height: 200,
            crop: 'pad'
          });
          return {
            ...novedades,
            imagen
          }
        } else {
          return {
            ...novedades,
            imagen: ''
          }
        }
      });

    res.json(novedades);
});

router.post('contacto', async (req, res) =>{
  const mail = {
    to: 'diegocartelle@gmail.com',
    subject: 'Web contact',
    html: `${req.body.nombre} contact us in regard of more information from this
     email: ${req.body.email} <br> In addition, left this comment: ${req.body.mensaje} <br> The phone number is: ${req.body.telefono} `
  }

  const transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: procces.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  await transport.sendMail(mail)

  res.status(201).json({
    error: false,
    message: 'Message send it'
  });
});

module.exports = router;