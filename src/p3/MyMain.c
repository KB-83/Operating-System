code Main

  -- OS Class: Project 3
  --
  -- <PUT YOUR NAME HERE>
  --

-----------------------------  Main  ---------------------------------

  function main ()
    barberShop = new BarberShop
    barberShop.Init()
    barberShop.TestBarberShop()
endFunction

behavior BarberShop
    method Init ()
        customers = new Semaphore
        barbers = new Semaphore
        mutex = new Semaphore
        customers.Init(0)
        barbers.Init(0)
        mutex.Init(1)
        waiting = 0
    endMethod

    method Barber (p: int)
        while true
            customers.Down()     -- Wait for a customer
            mutex.Down()         -- Protect the waiting count
            waiting = waiting - 1
            barbers.Up()         -- Signal that barber is ready
            mutex.Up()
            self.CutHair()       -- Perform haircut
        endWhile
    endMethod

    method Customer (p: int)
        mutex.Down()             -- Protect the waiting count
        if waiting < 5           -- Check if there's space in the waiting area
            waiting = waiting + 1
            customers.Up()       -- Signal that a customer is waiting
            mutex.Up()
            barbers.Down()       -- Wait for a barber
            self.Haircut()       -- Get haircut
        else
            -- If no space, leave without haircut
            mutex.Up()
        endIf
    endMethod

    method HairCut ()
        print("Customer is getting a haircut\n")
        currentThread.Yield()   -- Simulate time taken for haircut
    endMethod

    method CutHair ()
        print("Barber is cutting hair\n")
        currentThread.Yield()   -- Simulate time taken to cut hair
    endMethod

    method PrintState ()
        mutex.Down()            -- Protect access to shared state
        print("Snapshot - Waiting customers: " + intToString(waiting) + "\n")
        if waiting > 0
            print("Snapshot - Barber is busy\n")
        else
            print("Snapshot - Barber is idle\n")
        endIf
        mutex.Up()
    endMethod

    method MonitorBarberShop (p : int)
        while true
            self.PrintState()
            currentThread.Sleep(5000)  -- Wait for 5 seconds before the next snapshot
        endWhile
    endMethod


  method TestBarberShop ()
    
    -- Create and start the barber thread
    barberThread = new Thread
    barberThread.Init("Barber")
    barberThread.Fork(Barber, 1)

    -- Create and start customer threads
    customerThreads = new array of Thread {10 of new Thread}
    for i = 0 to 9
        customerThreads[i].Init("Customer-" + intToString(i))
        customerThreads[i].Fork(Customer, 1)
    endFor

    -- Create and start monitor thread
    monitorThread = new Thread
    monitorThread.Init("Monitor")
    monitorThread.Fork(MonitorBarberShop, 1)
endMethod

endBehavior
endCode
