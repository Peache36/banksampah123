/*
  Warnings:

  - The primary key for the `RubbishOnDeposit` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `rubbishId` on the `RubbishOnDeposit` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "RubbishOnDeposit" DROP CONSTRAINT "RubbishOnDeposit_rubbishId_fkey";

-- AlterTable
ALTER TABLE "Rubbish" ADD COLUMN     "RubbishOnDepositId" INTEGER;

-- AlterTable
ALTER TABLE "RubbishOnDeposit" DROP CONSTRAINT "RubbishOnDeposit_pkey",
DROP COLUMN "rubbishId",
ADD CONSTRAINT "RubbishOnDeposit_pkey" PRIMARY KEY ("depositId");

-- AddForeignKey
ALTER TABLE "Rubbish" ADD CONSTRAINT "Rubbish_RubbishOnDepositId_fkey" FOREIGN KEY ("RubbishOnDepositId") REFERENCES "RubbishOnDeposit"("depositId") ON DELETE SET NULL ON UPDATE CASCADE;
