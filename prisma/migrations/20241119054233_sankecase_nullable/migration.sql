-- AlterTable
ALTER TABLE `notification` MODIFY `message` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `user` MODIFY `username` VARCHAR(191) NULL,
    MODIFY `email` VARCHAR(191) NULL,
    MODIFY `provider` VARCHAR(191) NULL,
    MODIFY `reward` INTEGER NOT NULL DEFAULT 0,
    MODIFY `level` INTEGER NOT NULL DEFAULT 1;
