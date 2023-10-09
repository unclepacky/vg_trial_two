-- CreateEnum
CREATE TYPE "CustomerType" AS ENUM ('GUEST', 'TENANT', 'EXTENANT');

-- CreateTable
CREATE TABLE "Customer" (
    "id" TEXT NOT NULL,
    "type" "CustomerType" NOT NULL DEFAULT 'GUEST',
    "firstName" TEXT NOT NULL,
    "LastName" TEXT NOT NULL,
    "displayName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Customer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Customer_email_key" ON "Customer"("email");
