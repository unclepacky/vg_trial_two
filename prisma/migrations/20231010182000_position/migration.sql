/*
  Warnings:

  - Added the required column `position` to the `Employee` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "Position" AS ENUM ('RECEPTION', 'MAINTENANCE', 'CLEANING', 'HOUSEKEEPING', 'SECURITY', 'LAUNDRY', 'WORKSHOP');

-- AlterTable
ALTER TABLE "Employee" ADD COLUMN     "position" "Position" NOT NULL;
