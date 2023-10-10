/*
  Warnings:

  - Made the column `firstName` on table `Employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `LastName` on table `Employee` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Employee" ALTER COLUMN "firstName" SET NOT NULL,
ALTER COLUMN "LastName" SET NOT NULL;
