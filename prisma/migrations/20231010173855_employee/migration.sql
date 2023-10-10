/*
  Warnings:

  - Added the required column `prefix` to the `Customer` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "Role" AS ENUM ('BASIC', 'ADMIN');

-- CreateEnum
CREATE TYPE "Prefix" AS ENUM ('MR', 'MRS', 'MISS', 'DR', 'ENG', 'PROF', 'STUDENT');

-- AlterTable
ALTER TABLE "Customer" ADD COLUMN     "prefix" "Prefix" NOT NULL;

-- CreateTable
CREATE TABLE "Employee" (
    "id" TEXT NOT NULL,
    "role" "Role" NOT NULL DEFAULT 'BASIC',
    "firstName" TEXT,
    "LastName" TEXT,
    "displayName" TEXT,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Employee_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Employee_email_key" ON "Employee"("email");
