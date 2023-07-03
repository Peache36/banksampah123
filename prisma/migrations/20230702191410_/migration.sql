/*
  Warnings:

  - A unique constraint covering the columns `[firebaseId]` on the table `DataUser` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "DataUser_firebaseId_key" ON "DataUser"("firebaseId");
