const multer = require('multer')
const path = require('path');
const avatarStorage = multer.diskStorage({
    destination : 'uploads/avatar/',
    filename: (req, file, cb) => {
        const uniqueSuffix = `${Date.now()}-${Math.round(Math.random() * 1E9)}`;
        const extension = path.extname(file.originalname);
        const filename = `${file.fieldname}-${uniqueSuffix}${extension}`;
        cb(null, filename);
      },
})

const rubbishStorage = multer.diskStorage({
    destination : 'uploads/rubbish/',
    filename: (req, file, cb) => {
        const uniqueSuffix = `${Date.now()}-${Math.round(Math.random() * 1E9)}`;
        const extension = path.extname(file.originalname);
        const filename = `${file.fieldname}-${uniqueSuffix}${extension}`;
        cb(null, filename);
      },
})

const avatarPhoto = multer({avatarStorage})
const rubbishPhoto = multer({rubbishStorage})

module.exports = {avatarPhoto,rubbishPhoto}