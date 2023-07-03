const prisma = require("../database/prisma.database")

const makePost = async(req,res) => {
    const {title,content} = req.body

    //TEMPORARY 
    const user = await prisma.DataUser.findUnique({
        where : {
            firebaseId : req.decodedToken
        }
    })
    if(!title || !content) {
      return res.status(422).json({status : "fail",message : "You Need Fill Out All Needed Data"})   
    }
    try {
        const newPost = await prisma.post.create({
            data : {
                title : title,
                content : content,
                photo : "",
                user: {
                    connect : { id : user.id}
                }
            }
        })
        return res.status(201).json({status:"success", data : newPost})
    } catch (error) {
        console.log(error)
        return res.status(500).json({status : "fail", message : error})
    }
}

const getAllPost = async(req,res) => {
    try {
        const allPost = await prisma.post.findMany({
            include: {
                comments : true
            }
        })
        return res.status(200).json({status:"success", data : allPost})
    } catch (error) {
        return res.status(500).json({status: "fail", message : error})
    }
}

const makeAcomment = async (req,res) => {
    const {content} = req.body
    const {postId} = req.params
    const user = await prisma.DataUser.findUnique({
        where : {
            firebaseId : req.decodedToken
        }
    })
    if(!content){
        return req.status(422).json({status:"fail", message : "Can't Comment Blank Duhh!"})
    }
    try {
        const comment = await prisma.comment.create({
            data : {
                content : content,
                user : {
                    connect :{
                        id : parseInt(user.id)
                    }
                },
                post : {
                    connect : {
                        id : parseInt(postId)
                    }
                }
            }
        })
        return res.status(201).json({status : "success", data: comment})
    } catch (error) {
        return res.status(500).json({status: "fail", message:error})
    }
}

const giveALike = async(req,res) => {
    //FIREBASE REALTIME DATABASE
}

module.exports = {makePost,getAllPost,makeAcomment}