import { UserService } from "../services/user.service.js";

export class UserController {
  userService = new UserService();
  tempLogin = async (req, res, next) => {
    const { username } = req.body;
    const user = await this.userService.tempLogin(username);
    res.status(200).json(user);
  };

  getUserInfo = async (req, res, next) => {
    const { userId } = req.body;
    const user = await this.userService.getUserInfo(userId);
    res.status(200).json(user);
  };

  updateUserImg = async (req, res, next) => {
    const { userId, imgNumber } = req.body;
    const userinfo = await this.userService.updateUserImg(userId, imgNumber);
    res.status(200).json(userinfo);
  };

  updateUsername = async (req, res, next) => {
    const { userId, username } = req.body;
    const userinfo = await this.userService.updateUsername(userId, username);
    res.status(200).json(userinfo);
  };
}
