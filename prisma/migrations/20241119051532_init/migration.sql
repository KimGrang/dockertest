-- CreateTable
CREATE TABLE `user` (
    `user_id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `img_dir` VARCHAR(191) NULL,
    `email` VARCHAR(191) NOT NULL,
    `provider` VARCHAR(191) NOT NULL,
    `reward` INTEGER NOT NULL,
    `level` INTEGER NOT NULL,

    PRIMARY KEY (`user_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notification` (
    `notification_id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`notification_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `wetsuit` (
    `wetsuit_id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `wetsuit_grade_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`wetsuit_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `wetsuit_grade` (
    `wetsuit_grade_id` VARCHAR(191) NOT NULL,
    `level` VARCHAR(191) NOT NULL,
    `detail` VARCHAR(191) NOT NULL,
    `img_dir` VARCHAR(191) NULL,

    PRIMARY KEY (`wetsuit_grade_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pickup` (
    `pickup_id` VARCHAR(191) NOT NULL,
    `wetsuit_id` VARCHAR(191) NOT NULL,
    `recipient` VARCHAR(191) NOT NULL,
    `contact_number` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `detail` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `status` VARCHAR(191) NOT NULL,
    `finished_at` DATETIME(3) NULL,

    PRIMARY KEY (`pickup_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `notification` ADD CONSTRAINT `notification_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `wetsuit` ADD CONSTRAINT `wetsuit_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `wetsuit` ADD CONSTRAINT `wetsuit_wetsuit_grade_id_fkey` FOREIGN KEY (`wetsuit_grade_id`) REFERENCES `wetsuit_grade`(`wetsuit_grade_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `pickup` ADD CONSTRAINT `pickup_wetsuit_id_fkey` FOREIGN KEY (`wetsuit_id`) REFERENCES `wetsuit`(`wetsuit_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
