-- CreateTable
CREATE TABLE "DataUser" (
    "id" SERIAL NOT NULL,
    "firebaseId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "point" BIGINT NOT NULL,

    CONSTRAINT "DataUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Rubbish" (
    "id" SERIAL NOT NULL,
    "price" INTEGER NOT NULL,
    "unit" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Rubbish_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Transaction" (
    "id" TEXT NOT NULL,
    "total_price" INTEGER NOT NULL,
    "requestAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id")
);
