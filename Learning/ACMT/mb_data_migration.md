# MB Data Migration

Article ID: TP1298
Last Modified:
27 Jun 2017

**Data Migration on the MacBook (Retina, 12-inch, Early 2015, Early 2016, and 2017)**

There are special considerations for data migration. It is recommended that technicians use the following procedure to transfer a customer’s data from an older computer to MacBook (Retina, 12-inch, Early 2015, Early 2016, and 2017).

**Note:** This method is for technician use only. If a user wishes to transfer data from his or her own Mac or Windows computer, refer to article HT204754: Move content to your new MacBook or MacBook Pro. For more general information on moving content to a new Mac, refer to article HT204350: Move your content to a new Mac.


**Required Tools:**

- Host computer running OS X 10.10 Yosemite or later with the Push Migration (Version 1.1) tool installed. For more information, refer to article TP1345: Push Migration User Guide.
- USB-C to USB-A cable (923-00504) to connect the MacBook (Retina, 12-inch, Early 2015, Early 2016, and 2017) to the host computer.
- Note: The included USB-C Charge Cable supports charging and USB 2 only. When transferring data between two MacBook (Retina, 12-inch, Early 2015, Early 2016, and 2017) computers, a USB-C to USB-C cable that is capable of USB 3.1 data transfer is required.
- A Thunderbolt to Thunderbolt cable to connect the user's computer (source computer) to the host computer. If the user’s computer does not have a Thunderbolt port, then a FireWire cable and a Thunderbolt to FireWire adapter will be required.

1 - Host       2 - Source       3 - Target

1 = Host computer
2 = Source computer
3 = Target computer

**Important:** For MacBook (Retina, 12-inch, Early 2016 and 2017) ensure the computer has at least 50 percent battery life before starting the migration process. If there is less than 50 percent battery power, the migration may not complete successfully.

**Steps:**

1. Connect the user’s computer (source computer) to the host computer. Note: The source computer must be running OS X 10.5 Leopard or later.
1. Connect the target computer to the host computer. Note: Target disk mode is only supported with a USB-C to USB-A cable (923-00504).
1. Put both the source computer and the target computer into target disk mode. To do this, hold down the T key at startup. The target disk mode symbol will appear on the display of each computer.
1. Launch the Push Migration tool on the host computer.
1. Follow the prompts on the host computer to complete the data transfer.

**Important:**

- **For host computers running OS X 10.10 Yosemite**, the host computer must have as at least as many user accounts as the source computer. When setting up the host computer, **it is recommended to configure 10 user accounts**. The user accounts do not need to have any user data in them; they only need to be configured. If there are not enough user accounts configured on the host computer, then the customer’s data will not transfer.

- **For host computers running OS X 10.11 El Capitan or later**, the creation of additional user accounts is no longer needed.

- **For source computers that do not support target disk mode**, the Push Migration tool cannot be used. The migration must be performed using one of the methods described in article HT204754: Move content to your new MacBook or MacBook Pro.
