const multer = require('multer')
const path = require('path')
const fs   = require('fs')

const imgValidation = (req, file, cb) => {
    console.log('imgValidation req',req)
    console.log('imgValidation file',file)
    // Accept images only
    if (!file.originalname.match(/\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF)$/)) {
        req.fileValidationError = 'Only image files are allowed!'
        return cb(new Error('Only image files are allowed!'), false)
    }
    cb(null, true)
}

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'storage/user/')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now()+'-'+file.originalname)
    }
})

exports.uploadImg = multer({ storage:storage, fileFilter: imgValidation })

exports.remove = async (files, disk=false) => {
    // console.log('remove files',files)
    // console.log('remove disk',disk)
    for (let i = 0; i < files.length; i++) {
        let path = disk || files[i].path
        fs.unlink(path, err => console.log('File not found !'))
    }
}