/*
  Warnings:

  - You are about to drop the column `address` on the `DataUser` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `DataUser` table. All the data in the column will be lost.
  - You are about to drop the column `point` on the `DataUser` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "DataUser" DROP COLUMN "address",
DROP COLUMN "phoneNumber",
DROP COLUMN "point";

-- CreateTable
CREATE TABLE "Profile" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "address" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "point" BIGINT NOT NULL,
    "photo" TEXT NOT NULL,

    CONSTRAINT "Profile_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Profile_userId_key" ON "Profile"("userId");

-- AddForeignKey
ALTER TABLE "Profile" ADD CONSTRAINT "Profile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "DataUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
