import express from "express";
import { createPedido, deletePedido, getAllPedidos, getPedido, updatePedido } from "../controllers/PedidoController.js";

const router = express.Router();
router.get('/', getAllPedidos);
router.get('/:id',getPedido)
router.post('/',createPedido)
router.put('/:id',updatePedido)
router.delete('/:id',deletePedido)

export default router;