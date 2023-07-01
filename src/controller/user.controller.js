const {createUserWithEmailAndPassword,getAuth,signInWithEmailAndPassword} = require('firebase/auth')
const {app} = require('../utils/firebase.utils');
const prisma = require('../database/prisma.database');
const auth = getAuth(app)

const signUp = async (req, res) => {
    const { name,email, password,address,phoneNumber } = req.body;
    try {
      const response = await createUserWithEmailAndPassword(
        auth,
        email,
        password
      );

      if(!name || !email || !password){
        res.status(422).json({status : 'fail', message : "Maaf Isi Form Dengan Benar"})
      } else {
        const userData = await prisma.DataUser.create({
          data:{
            firebaseId : response.user.uid,
            name : name,
            profile : {
              create : {
                address : address,
                phoneNumber : phoneNumber,
                point : 0 ,
                photo : ""
              }
            } 
          }
        })
        res.status(200).json({ status: 'success', data: userData });
      }
    } catch (error) { 
      if (error.code === 'auth/email-already-in-use') {
        return res
          .status(409)
          .json({ status: 'fail', message: 'Email already exist' });
      }
  
      res.status(500).json({ status: 'fail', message: error });
    }
  };
  

const signIn = async (req, res) => {
  const { email, password } = req.body;
  try {
    const signInresponse = await signInWithEmailAndPassword(
      auth,
      email,
      password
    );
    res.status(200).json({
      status: 'success',
      data: signInresponse.user,
    });
  } catch (error) {
    if (
      error.code === 'auth/user-not-found' ||
      error.code === 'auth/wrong-password'
    ) {
      return res
        .status(401)
        .json({ status: 'fail', message: 'Email or password wrong' });
    }
    res.status(500).json({ status: 'fail', message: error });
  }
};

const uploudPhoto = async(req,res) => {
  const {filename} = req.file
  const {userId} = req.body
  try {
    const updateAvatar = await prisma.profile.update({
      where : {
        userId : parseInt(userId)
      },
      data: {
        photo : filename
      }
    })
    res.status(201).json({status : 'sucess',data : updateAvatar})
  } catch (error) {
    res.status(500).json({status : 'fail', message: error})
  }
}






module.exports = {signUp,signIn,uploudPhoto}