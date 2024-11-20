import { UserRepository } from "../repositories/user.repository.js";

export class UserService {
  userRepository = new UserRepository();

  tempLogin = async (username) => {
    const user = await this.userRepository.tempLogin(username);
    return user;
  };

  getUserInfo = async (userId) => {
    const userInfo = await this.userRepository.getUserInfo(userId);
    return userInfo;
  };

  updateUserImg = async (userId, imgNumber) => {
    const updatedUser = await this.userRepository.updateUserImg(
      userId,
      imgNumber
    );
    return updatedUser;
  };

  updateUsername = async (userId, username) => {
    const updatedUser = await this.userRepository.updateUsername(
      userId,
      username
    );
    return updatedUser;
  };
}
