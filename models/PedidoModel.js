import db from "../database/db.js";

import { DataTypes } from "sequelize";

const PedidoModel = db.define('pedidos',{
    codigo_empresa: { type: DataTypes.STRING },
    codigo_linea: { type: DataTypes.STRING },
    numero_pedido: { type: DataTypes.INTEGER },
    paciente_apellido: { type: DataTypes.STRING},
    paciente_dni: {type: DataTypes.INTEGER},
    estado: { type: DataTypes.STRING}, 
}) 
export default PedidoModel;