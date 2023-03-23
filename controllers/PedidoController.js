import PedidoModel from "../models/PedidoModel.js"

// mostrar todos los registros
export const getAllPedidos = async (req, res) => {
    try {
        const pedidos = await PedidoModel.findAll()
        res.json(pedidos)
    } catch (error) {
        res.json( {message: error.message} )
    }

}

// mostrar solo 1 registro
export const getPedido = async (req, res) => {
    try {
        const pedido = await PedidoModel.findAll({
            where: { id:req.params.id }
        })
        
        res.json(pedido[0])
        
    } catch (error) {
        res.json( {message: error.message} )
    }
}

//crear un registro
export const createPedido = async(req, res) => {
    try {
        var nuevoPedido = await PedidoModel.create(req.body)
        res.json({
            data: nuevoPedido,
            "message":"Registro Creado correctamente"
        })
    } catch (error) {
        res.json( {message: error.message} )
    }   
}

// Actualizar un registro
export const updatePedido = async (req, res) => {
    try {
        await PedidoModel.update(req.body,{
            where: {id: req.params.id}
        })
        res.json({
            "message":"Registro actualizado correctamente"
        })
    } catch (error) {
        res.json( {message: error.message} )       
    }
}

// Borra un registro
export const deletePedido = async (req, res) => {
    try {
        await PedidoModel.destroy({
            where: {id: req.params.id}
        })
        res.json({
            "message":"Registro eliminado correctamente"
        })
    } catch (error) {
        res.json( {message: error.message} )       
    }
}