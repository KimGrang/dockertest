import { prisma } from "../utils/prisma/index.js";

export class UserRepository {
  findAllUser = async () => {
    return await prisma.user.findMany();
  };
}
