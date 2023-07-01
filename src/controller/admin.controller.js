const prisma = require('../database/prisma.database')

const addRubbish = async(req,res) => {
    const {price,unit,name} = req.body 
    try {
        const newRubbish = await prisma.rubbish.create({
            data: {
                price,unit,name
            }
        })
        return res.status(201).json({"status" : "success", data : newRubbish})
    } catch (error) {
        console.log(error)
        return res.status(500).json({"status" : "fail", message : error})
    }
}

const editRubbish = async(req,res) => {
    const {id} = req.params
    const {unit,price} = req.body
    try {
        const updateRubbish = await prisma.rubbish.update({
            where : {
                id : parseInt(id)
            }, 
            data : {
                unit : unit,
                price: price
            }
        })
        return res.status(200).json({status : "success", data : updateRubbish})
    } catch (error) {
        console.log(error)
        return res.status(500).json({status: "fail", message: error})
    }
}

const deleteRubbish = async(req,res) => {
    const {id} = req.params
    try {
        await prisma.rubbish.delete({
            where : {
                id : parseInt(id)
            }
        }) 
        return res.status(200).json({
            status : "success"
        })
    } catch (error) {
        return res.status(500).json({status: "fail", message: error})
        
    }
}

const getAllRubbish = async (req,res) => {
    try {
        const allRubbish = await prisma.rubbish.findMany()
        return res.status(200).json({status: "success", data: allRubbish})
    } catch (error) {
        return res.status(500).json({status: "fail", message: error})
        
    }
}

const deleteUser = async(req,res) => {
    const {userId} = req.body
}

const getRubbishById = async (req,res) => {
    const {id} = req.params
    try {
        const rubbish = await prisma.rubbish.findUnique({
            where : {
                id : parseInt(id)
            }
        })
        return res.status(200).json({status: "success", data: rubbish})
    } catch (error) {
        return res.status(500).json({status: "fail", message: error})
        
    }
}

const depositRubbish = async (req,res) => {
    const {rubbishList} = req.body
    const {id} = req.params
    try {
        const deposit = await prisma.deposit.create({
            data : {
                user : {
                    connect :{
                        id : parseInt(id)
                    }
                },    
                rubbish : {
                    create : rubbishList.split(',').map((id) => ({
                        rubbish : {
                            connect : {
                                id : parseInt(id)
                            }
                        }
                    }))
                }
            },
            include : {
                rubbish : true
            }
        })
        return res.status(201).json({status : 'success', data: deposit})
    } catch (error) {
        console.log(error)
        return res.status(500).json({status: 'fail', message : error})
    }
}

module.exports = {addRubbish,editRubbish,depositRubbish,getAllRubbish,getRubbishById,deleteRubbish}