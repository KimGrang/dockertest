import express from "express";
import { UserController } from "../controllers/user.controller.js";

const router = express.Router();

const userController = new UserController();
router.post("/temp/login", userController.tempLogin);
router.get("/info", userController.getUserInfo);
router.put("/img", userController.updateUserImg);
router.put("/username", userController.updateUsername);
export default router;
