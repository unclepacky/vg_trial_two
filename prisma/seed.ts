import { CustomerType, Prisma, PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const customerData: Prisma.CustomerCreateInput[] = [
  {
    firstName: "claude",
    LastName: "Aoun",
    displayName: "UnclePacky",
    email: "claudeaoun@gmail.com",
  },
];

async function main() {
  await prisma.customer.deleteMany();
  //   const customer = await prisma.customer.create({
  //     data: {
  //       firstName: "claude",
  //       LastName: "Aoun",
  //       displayName: "UnclePacky",
  //       email: "claudeaoun@gmail.com",
  //     },
  //   });
  //   const customer = await prisma.customer.findMany();
  //   console.log(customer);

  for (const u of customerData) {
    const customer = await prisma.customer.create({
      data: u,
    });
    console.log(`Customer with id: ${customer.id} was created.`);
  }
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
