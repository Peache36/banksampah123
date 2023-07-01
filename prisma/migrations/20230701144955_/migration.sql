/*
  Warnings:

  - You are about to drop the column `RubbishOnDepositId` on the `Rubbish` table. All the data in the column will be lost.
  - The primary key for the `RubbishOnDeposit` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `rubbishId` to the `RubbishOnDeposit` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Rubbish" DROP CONSTRAINT "Rubbish_RubbishOnDepositId_fkey";

-- AlterTable
ALTER TABLE "Rubbish" DROP COLUMN "RubbishOnDepositId";

-- AlterTable
ALTER TABLE "RubbishOnDeposit" DROP CONSTRAINT "RubbishOnDeposit_pkey",
ADD COLUMN     "rubbishId" INTEGER NOT NULL,
ADD CONSTRAINT "RubbishOnDeposit_pkey" PRIMARY KEY ("depositId", "rubbishId");

-- AddForeignKey
ALTER TABLE "RubbishOnDeposit" ADD CONSTRAINT "RubbishOnDeposit_rubbishId_fkey" FOREIGN KEY ("rubbishId") REFERENCES "Rubbish"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
