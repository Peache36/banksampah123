-- AlterTable
ALTER TABLE "Rubbish" ADD COLUMN     "depositId" INTEGER NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "Deposit" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Deposit_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Rubbish" ADD CONSTRAINT "Rubbish_depositId_fkey" FOREIGN KEY ("depositId") REFERENCES "Deposit"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Deposit" ADD CONSTRAINT "Deposit_userId_fkey" FOREIGN KEY ("userId") REFERENCES "DataUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
