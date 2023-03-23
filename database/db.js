import { Sequelize } from "sequelize";

const db = new Sequelize('pfortnermy','phpmyadmin','phpmy1234',{
    host:'localhost',
    dialect:'mysql'
});

export default db;

