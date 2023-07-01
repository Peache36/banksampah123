/*
  Warnings:

  - You are about to alter the column `point` on the `Profile` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Integer`.

*/
-- AlterTable
ALTER TABLE "Profile" ALTER COLUMN "point" SET DATA TYPE INTEGER;
