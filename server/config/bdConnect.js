
// const { default: mongoose } = require("mongoose");
import mongoose from "mongoose";
const dbConnect = async () => {
  try {

    const dbConfigure = process.env.DB_USERNAME && process.env.DB_PASSWORD ? `${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@` : '';
    const dConnection = `${process.env.DB_CONNECTION}://${dbConfigure}${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

    console.log("🚀 ~ dbConnect", dConnection)
    
    return mongoose.connect(dConnection).then(async () => {
      // console.log("🚀 ~ Connect To Mongodb Success! on PORT ", process.env.DB_PORT);
    }).catch((err) => {
      console.log(err.message);
    })

  } catch (error) {
    console.log("Mongoose Database Connected Failly", error);
  }
};

export default dbConnect;
