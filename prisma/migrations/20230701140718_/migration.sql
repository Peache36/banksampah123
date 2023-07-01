-- DropForeignKey
ALTER TABLE "Rubbish" DROP CONSTRAINT "Rubbish_depositId_fkey";

-- AlterTable
ALTER TABLE "Rubbish" ALTER COLUMN "depositId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Rubbish" ADD CONSTRAINT "Rubbish_depositId_fkey" FOREIGN KEY ("depositId") REFERENCES "Deposit"("id") ON DELETE SET NULL ON UPDATE CASCADE;
