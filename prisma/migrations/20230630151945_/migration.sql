-- CreateEnum
CREATE TYPE "Role" AS ENUM ('user', 'admin');

-- AlterTable
ALTER TABLE "DataUser" ADD COLUMN     "role" "Role" NOT NULL DEFAULT 'user';
