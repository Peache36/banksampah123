/*
  Warnings:

  - You are about to drop the column `depositId` on the `Rubbish` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Rubbish" DROP CONSTRAINT "Rubbish_depositId_fkey";

-- AlterTable
ALTER TABLE "Rubbish" DROP COLUMN "depositId";

-- CreateTable
CREATE TABLE "RubbishOnDeposit" (
    "depositId" INTEGER NOT NULL,
    "rubbishId" INTEGER NOT NULL,

    CONSTRAINT "RubbishOnDeposit_pkey" PRIMARY KEY ("depositId","rubbishId")
);

-- AddForeignKey
ALTER TABLE "RubbishOnDeposit" ADD CONSTRAINT "RubbishOnDeposit_depositId_fkey" FOREIGN KEY ("depositId") REFERENCES "Deposit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RubbishOnDeposit" ADD CONSTRAINT "RubbishOnDeposit_rubbishId_fkey" FOREIGN KEY ("rubbishId") REFERENCES "Rubbish"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
