const admin = require('firebase-admin')
const dotenv = require('dotenv');
const prisma = require('../database/prisma.database');

var serviceAccount = require("../../serviceAccount.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});


const verifyToken = async (req, res, next) => {
    const { token } = req.headers;
    try {
        const decodedToken = await admin.auth().verifyIdToken(token);
        req.decodedToken = decodedToken.uid;

        next();
    } catch (error) {
        res.status(401).json({ status: "fail", message: "Invalid Token" });
    }
};

const verifyTokenAdmin = async (req,res,next) => {
    const {token} = req.headers

    try {
        const decodedToken = await admin.auth().verifyIdToken(token);
        req.decodedToken = decodedToken.uid;
        const verifyAdmin = await prisma.DataUser.findFirst({
            where : {
                firebaseId : decodedToken.uid
            }
        })
        if(verifyAdmin.role !== 'admin') {
            return res.status(401).json({status: 'fail', message : 'Unauthorized'})
        }
        next()
    } catch (error) {
        return res.status(401).json({ status: "fail", message: "Invalid Token" });
    }
} 

module.exports = { verifyToken, verifyTokenAdmin };